package edu.umich.briantr

import java.time.LocalDate
import java.util.*

val vaccinated = mutableListOf<VaccineEntry>()

data class VaccineEntry(
    val uuid: UUID = UUID.randomUUID(),
    val lastName: String,
    val firstName: String,
    val middleName: String? = "",
    val dateOfBirth: LocalDate,
    val firstDose: VaccineBrand? = null,
    val firstDoseDate: LocalDate? = null,
    val secondDose: VaccineBrand? = null,
    val secondDoseDate: LocalDate? = null,
    val boosterDose: VaccineBrand? = null,
    val boosterDoseDate: LocalDate? = null,
    val isFullyVaccinated: Boolean =
        if (secondDoseDate != null) {
            LocalDate.now() >= secondDoseDate.plusWeeks(2L)
        } else if (firstDoseDate != null && firstDose == VaccineBrand.JANSSEN) {
            LocalDate.now() >= firstDoseDate.plusWeeks(2L)
        } else {
            false
        }
)
