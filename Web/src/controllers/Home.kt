package ca.myclassmate.controllers

import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.response.respond
import io.ktor.routing.get
import io.ktor.routing.routing
import org.jetbrains.exposed.sql.SchemaUtils
import org.jetbrains.exposed.sql.insert
import org.jetbrains.exposed.sql.transactions.transaction

fun Application.home(testing: Boolean = false) {
    var count: Int = 0;
    routing {
        get("/home/index") {

            var id: Long? = 0;
//            transaction {
//                SchemaUtils.create(Cities, Colleges, Users)
//
//                Colleges.insert {
//                    it[name] = "Danilo Testing"
//                } get Colleges.id
//            }

            count += 1
            call.respond(mapOf(
                "hello" to count
            ))
        }
    }
}

