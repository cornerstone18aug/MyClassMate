package ca.myclassmate

import com.fasterxml.jackson.databind.SerializationFeature
import com.ryanharter.ktor.moshi.moshi
import com.typesafe.config.ConfigFactory
import freemarker.cache.ClassTemplateLoader
import io.ktor.application.*
import io.ktor.config.ApplicationConfig
import io.ktor.config.HoconApplicationConfig
import io.ktor.response.*
import io.ktor.routing.*
import io.ktor.http.*
import io.ktor.features.*
import io.ktor.freemarker.FreeMarker
import io.ktor.gson.*
import io.ktor.jackson.jackson
import io.ktor.server.engine.embeddedServer
import io.ktor.server.netty.Netty
import io.ktor.sessions.Sessions
import io.ktor.sessions.cookie

class AuthenticationException : RuntimeException()
class AuthorizationException : RuntimeException()

fun main(args: Array<String>){
    io.ktor.server.netty.EngineMain.main(args)
}
fun Application.install() {
    install(ContentNegotiation) {
        gson {
        }
    }
    install(Sessions) {
        cookie<UserSession>("USER_SESSION") {
            cookie.extensions["userid"] = "settheidhere"
        }
    }
    install(Compression) {
        gzip {
            priority = 1.0
        }
        deflate {
            priority = 10.0
            minimumSize(1024) // condition
        }
    }
    install(FreeMarker) {
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
    }

    install(StatusPages) {
        exception<Throwable> { e->
            call.respondText(e.localizedMessage, ContentType.Text.Plain, HttpStatusCode.InternalServerError)
        }
        exception<AuthenticationException> { cause ->
            call.respond(HttpStatusCode.Unauthorized)
        }
        exception<AuthorizationException> { cause ->
            call.respond(HttpStatusCode.Forbidden)
        }

    }
}





//
//
//

//
//data class Response1(val status: String)
//
//
//@Suppress("unused") // Referenced in application.conf
//@kotlin.jvm.JvmOverloads
//fun Application.module(testing: Boolean = false) {
//    install(FreeMarker) {
//        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
//    }
//
//    install(Locations) {
//    }
//
//    install(Sessions) {
//        cookie<MySession>("MY_SESSION") {
//            cookie.extensions["SameSite"] = "lax"
//        }
//    }
//
//    install(Compression) {
//        gzip {
//            priority = 1.0
//        }
//        deflate {
//            priority = 10.0
//            minimumSize(1024) // condition
//        }
//    }
//
//    install(CORS) {
//        method(HttpMethod.Options)
//        method(HttpMethod.Put)
//        method(HttpMethod.Delete)
//        method(HttpMethod.Patch)
//        header(HttpHeaders.Authorization)
//        header("MyCustomHeader")
//        allowCredentials = true
//        anyHost() // @TODO: Don't do this in production if possible. Try to limit it.
//    }
//
//    install(PartialContent) {
//        // Maximum number of ranges that will be accepted from a HTTP request.
//        // If the HTTP request specifies more ranges, they will all be merged into a single range.
//        maxRangeCount = 10
//    }
//
//    install(ContentNegotiation) {
////        moshi()
//        gson {
//        }
//    }
//
//    routing {
//        get("/r1") {
//            call.respond(Response1(status = "ok"))
//        }
//        get("/") {
//            call.respondText("HELLO WORLD!", contentType = ContentType.Text.Plain)
//        }
//
//        suspend fun PipelineContext<Unit, ApplicationCall>.teste() {
//            call.respondText("HELLO WORLD!", contentType = ContentType.Text.Plain)
////            return this
//        }
//        get("/any3") { Home.index(this) }
//
//        get("/html-dsl") {
//            call.respondHtml {
//                body {
//                    h1 { +"HTML" }
//                    ul {
//                        for (n in 1..10) {
//                            li { +"$n" }
//                        }
//                    }
//                }
//            }
//        }
//
//        get("/styles.css") {
//            call.respondCss {
//                body {
//                    backgroundColor = Color.red
//                }
//                p {
//                    fontSize = 2.em
//                }
//                rule("p.myclass") {
//                    color = Color.blue
//                }
//            }
//        }
//
//        get("/html-freemarker") {
//            call.respond(FreeMarkerContent("index.ftl",
//                mapOf(
//                    "data" to IndexData(listOf(1, 2, 3)),
//                    "data2" to "Danilo"
//                ),
//                ""))
//        }
//
//        // Static feature. Try to access `/static/ktor_logo.svg`
//        static("/static") {
//            resources("static")
//        }
//
//        get<MyLocation> {
//            call.respondText("Location: name=${it.name}, arg1=${it.arg1}, arg2=${it.arg2}")
//        }
//
//        // Register nested routes
//        get<Type.Edit> {
//            call.respondText("Inside $it")
//        }
//        get<Type.List> {
//            call.respondText("Inside $it")
//        }
//
//        get("/session/increment") {
//            val session = call.sessions.get<MySession>() ?: MySession()
//            call.sessions.set(session.copy(count = session.count + 1))
//            call.respondText("Counter is ${session.count}. Refresh to increment.")
//        }
//
//        install(StatusPages) {
//            exception<Throwable> { e->
//                call.respondText(e.localizedMessage, ContentType.Text.Plain, HttpStatusCode.InternalServerError)
//            }
//            exception<AuthenticationException> { cause ->
//                call.respond(HttpStatusCode.Unauthorized)
//            }
//            exception<AuthorizationException> { cause ->
//                call.respond(HttpStatusCode.Forbidden)
//            }
//
//        }
//
//        get("/json/gson") {
//            call.respond(mapOf("hello" to "world"))
//        }
//    }
//}
//
//data class IndexData(val items: List<Int>)
//
//@Location("/location/{name}")
//class MyLocation(val name: String, val arg1: Int = 42, val arg2: String = "default")
//
//@Location("/type/{name}")
//data class Type(val name: String) {
//    @Location("/edit")
//    data class Edit(val type: Type)
//
//    @Location("/list/{page}")
//    data class List(val type: Type, val page: Int)
//}
//
//data class MySession(val count: Int = 0)
//
//class AuthenticationException : RuntimeException()
//class AuthorizationException : RuntimeException()
//
//fun FlowOrMetaDataContent.styleCss(builder: CSSBuilder.() -> Unit) {
//    style(type = ContentType.Text.CSS.toString()) {
//        +CSSBuilder().apply(builder).toString()
//    }
//}
//
//fun CommonAttributeGroupFacade.style(builder: CSSBuilder.() -> Unit) {
//    this.style = CSSBuilder().apply(builder).toString().trim()
//}
//
//suspend inline fun ApplicationCall.respondCss(builder: CSSBuilder.() -> Unit) {
//    this.respondText(CSSBuilder().apply(builder).toString(), ContentType.Text.CSS)
//}
//

