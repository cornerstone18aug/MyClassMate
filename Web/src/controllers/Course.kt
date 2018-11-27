package ca.myclassmate.controllers

import ca.myclassmate.models.login.LoginIndexModel
import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.freemarker.FreeMarkerContent
import io.ktor.response.respond
import io.ktor.routing.get
import io.ktor.routing.routing

fun Application.course(testing: Boolean = false) {
    var count: Int = 0;
    routing {
        get("/my-courses/") {
            var model = LoginIndexModel()
            call.respond(
                FreeMarkerContent
                    (
                    "course/my-courses.ftl",
                    mapOf(
                        "model" to model
                    )
                )
            )
        }
    }
}