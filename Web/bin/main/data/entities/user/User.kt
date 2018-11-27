package ca.myclassmate.data.entities


import org.jetbrains.exposed.sql.*

object Users : Table() {
    val id = integer("id").autoIncrement().primaryKey()
    val name = varchar("name", 255)
    val email = varchar("email", 255)
    val passhash = varchar("passhash", 255)
    val collegeId = (integer("id") references Colleges.id).nullable()
}
object Colleges : Table() {
    val id = integer("id").autoIncrement().primaryKey()
    val name = varchar("name", 255)
}

