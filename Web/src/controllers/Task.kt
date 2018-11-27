package ca.myclassmate.controllers

import ca.myclassmate.models.login.LoginIndexModel
import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.response.respond
import io.ktor.routing.get
import io.ktor.routing.routing
import io.ktor.freemarker.FreeMarkerContent


fun Application.task(testing: Boolean = false) {
    routing {
        get("/my-tasks/") {
            var model = LoginIndexModel()
            call.respond(
                FreeMarkerContent
                    (
                    "task/classroom-task.ftl",
                    mapOf(
                        "model" to model
                    )
                )
            )
        }
        get("/tasks/{classroom}") {
            var model = LoginIndexModel()
            call.respond(
                FreeMarkerContent
                    (
                    "task/classroom-task-teacher.ftl",
                    mapOf(
                        "model" to model
                    )
                )
            )
        }
    }
}