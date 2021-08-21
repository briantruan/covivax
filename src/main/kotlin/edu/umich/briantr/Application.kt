package edu.umich.briantr

import io.ktor.application.*
import freemarker.cache.ClassTemplateLoader
import freemarker.core.HTMLOutputFormat
import io.ktor.freemarker.*
import io.ktor.http.*
import io.ktor.http.content.*
import io.ktor.request.*
import io.ktor.response.*
import io.ktor.routing.*
import java.time.LocalDate
import java.time.format.DateTimeParseException

fun main(args: Array<String>): Unit =
    io.ktor.server.netty.EngineMain.main(args)

@Suppress("unused") // application.conf references the main function. This annotation prevents the IDE from marking it as unused.
fun Application.module() {
    install(FreeMarker) {
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
        outputFormat = HTMLOutputFormat.INSTANCE
    }
    routing {
        get("/") {
            call.respond(FreeMarkerContent("index.ftl", mapOf("individuals" to vaccinated), ""))
        }
        get("/about") {
            call.respond(FreeMarkerContent("about.ftl", null, ""))
        }
        get("/aboutvaxx") {
            call.respond(FreeMarkerContent("aboutvaxx.ftl", null, ""))
        }
        get("/aboutpassport") {
            call.respond(FreeMarkerContent("aboutpassport.ftl", null, ""))
        }
        get("/sources") {
            call.respond(FreeMarkerContent("sources.ftl", null, ""))
        }
        post("/submit") {
            val param = call.receiveParameters()
            val lastName = param["text-1629481497184"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val firstName = param["text-1629481498601"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val middleName = param["text-1629481499909"] ?: ""
            val dateOfBirth = param["date-1629481560269"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val firstDose = param["select-1629481777037"]
            val firstDoseDate = param["date-1629481690854"]
            val secondDose = param["select-1629481890616"]
            val secondDoseDate = param["date-1629481763542"]
            val boosterDose = param["select-1629481890107"]
            val boosterDoseDate = param["date-1629481766205"]

            val newIndividual = VaccineEntry(
                lastName = lastName,
                firstName = firstName,
                middleName = middleName,
                dateOfBirth = LocalDate.parse(dateOfBirth),
                firstDose = firstDose?.let { it1 -> VaccineBrand.valueOf(it1.uppercase()) },
                firstDoseDate = try {
                    LocalDate.parse(firstDoseDate)
                } catch (ex: DateTimeParseException) {
                    null
                },
                secondDose = secondDose?.let { it1 -> VaccineBrand.valueOf(it1.uppercase()) },
                secondDoseDate = try {
                    LocalDate.parse(secondDoseDate)
                } catch (ex: DateTimeParseException) {
                    null
                },
                boosterDose = boosterDose?.let { it1 -> VaccineBrand.valueOf(it1.uppercase()) },
                boosterDoseDate = try {
                    LocalDate.parse(boosterDoseDate)
                } catch (ex: DateTimeParseException) {
                    null
                }
            )

            vaccinated.add(0, newIndividual)
            vaccinated.forEach {
                println(it)
            }
            call.respond(FreeMarkerContent("submit.ftl", null, ""))
        }
        /*
        I don't know what I'm doing here. Trying to add update/delete functions to complete CRUD app.

        delete("/edit/{id}") {

        }
         */
        static("/static") {
            resources("files")
        }
    }
}
