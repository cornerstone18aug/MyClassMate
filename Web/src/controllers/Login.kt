package ca.myclassmate.controllers

import ca.myclassmate.models.login.LoginIndexModel
import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.freemarker.FreeMarkerContent
import io.ktor.response.respond
import io.ktor.routing.get
import io.ktor.routing.routing

fun Application.login(testing: Boolean = false) {
    var count: Int = 0;
    routing {
        get("/") {
            var model: LoginIndexModel = LoginIndexModel()
            call.respond(
                FreeMarkerContent
                    (
                    "login/index.ftl",
                    mapOf(
                        "model" to model
                    )
                )
            )
        }
    }
}