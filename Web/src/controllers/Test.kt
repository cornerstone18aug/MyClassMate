package ca.myclassmate.controllers


import ca.myclassmate.data.DataSource
import com.google.gson.Gson
import com.google.gson.annotations.Expose
import com.google.gson.annotations.SerializedName
import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass
import io.ktor.application.Application
import io.ktor.application.call
import io.ktor.response.respond
import io.ktor.routing.get
import io.ktor.routing.routing
import org.jetbrains.exposed.dao.*
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.transactions.transaction

//object Users : Table("users") {
//    val id = Users.integer("id").autoIncrement().primaryKey()
//    val name = Users.varchar("name", 255)
//    val email = Users.varchar("email", 255)
//    val passhash = Users.varchar("passhash", 255)
//    val college = reference("college_id", Colleges.id).nullable()
////    val collegeId = (Users.integer("college_id") references Colleges.id).nullable()
//}
//
//object Colleges : Table("colleges") {
//    val id = Colleges.integer("id").autoIncrement().primaryKey()
//    val name = Colleges.varchar("name", 255)
//}
//
//object Cities : Table("cities") {
//    val id = Cities.integer("id").autoIncrement().primaryKey() // Column<Int>
//    val name = varchar("name", 255) // Column<String>
//}
//

//
//object Users : LongIdTable("users") {
////    val id = Users.integer("id").autoIncrement().primaryKey()
//    val name = Users.varchar("name", 255)
//    val email = Users.varchar("email", 255).nullable()
//    val passhash = Users.varchar("passhash", 255).nullable()
//    val college = reference("college_id", Colleges).nullable()
////    val collegeId = (Users.integer("college_id") references Colleges.id).nullable()
//}


object Users : IntIdTable("users") {
    val name = Users.varchar("name", 255)
    val email = Users.varchar("email", 255).nullable()
    val passhash = Users.varchar("passhash", 255).nullable()
    val college = reference("college_id", Colleges).nullable()
//    val collegeId = (Users.integer("college_id") references Colleges.id).nullable()
}


object Colleges : IntIdTable("colleges") {
    val name = Colleges.varchar("name", 255).nullable()
}

object Cities : IntIdTable("cities") {
    //    val id = Cities.integer("id").autoIncrement().primaryKey()
    val name = varchar("name", 255).nullable()
}

class UserDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<UserDao>(Users)

    var name by Users.name
    var email by Users.email
    var passhash by Users.passhash
    var collegeId by Colleges.id
}

class User() {
    constructor(foo: String): this() {
        this.name = foo
    }
    var id: Int = -1
    var name: String = ""
    var email: String = ""

    @Expose(serialize = false, deserialize = false)
    var passhash: String = ""
    var college: College? = null
    fun toJson(): String {
        return Gson().toJson(this)
    }
}
class College() {
    var id: Int = -1
    var name: String? = ""
}


//class College(id: EntityID<Int>) : IntEntity(id) {
//    companion object : IntEntityClass<College>(Colleges)
//}


//private val jdbc = "jdbc:mysql://root:12345678@localhost:3306/myclassmate?ssl=false"
//private val driver = "com.mysql.cj.jdbc.Driver"


fun main(args: Array<String>) {
//    Database.connect(jdbc, driver )
    transaction {
        SchemaUtils.create(Cities)
//       id = Colleges.insert {
//           it[name] = "St. Petersburg"
//       } get Colleges.id
    }
}

class Qualquer() {
    var name: String? = ""
}

fun Application.teste(testing: Boolean = false) {
    var count: Int = 0;
    routing {
        get("/test") {
//            var con = Database.connect(jdbc, driver)

            var id: Long? = 0
//            var id: EntityID<Long>?;
            var userList: MutableList<User> = mutableListOf<User>()
            var user1: User? = null
            transaction(DataSource.getConnection()) {
                SchemaUtils.drop(Users, Colleges, Cities)
                SchemaUtils.create(Cities, Colleges, Users)

                val query = Colleges.insert {
                    it[name] = "St. Petersburg"
                }
                val collegeID = query.get(Colleges.id)
                Users.insert {
                    it[name] = "Danilo"
                    it[college] = collegeID
                }


                val list1 = Users.select(where = { Users.name like "Danilo" })

                val items1 = Users.selectAll()
                val items2 = (Users leftJoin Colleges).select { Users.id eq 1 }.toList()
                items2.forEach {
                    var u = User()
                    u.name = it[Users.name]
                    u.college = College()
                    u.college?.id = it[Colleges.id].value
                    u.college?.name = it[Colleges.name]

                    var c = College()

//                    u.college = it[Users.college]

                    userList.add(u)
                }

                val users1 = Users.select { Users.id eq 1 }.first()
                commit()
            }
//            query.forEach {
//                println("------------------------")
//                println(it[Users.name])
//            }
            var jsonStr = Gson().toJson(userList)
            userList = Gson().fromJson(jsonStr, mutableListOf<User>()::class.javaObjectType)

            call.respond(userList)
            call.respond("${jsonStr} -")
//            call.respond(Gson().toJson(userList))
            if (user1 != null) {
            } else {
                call.respond("ok so far")
            }
//            call.respond(mapOf("hello" to userList))
            count += 1
//            call.respond(mapOf("hello" to id))
        }
    }
}