package ca.myclassmate.data.entities

import ca.myclassmate.controllers.College
import ca.myclassmate.data.helper.Entity
import ca.myclassmate.data.helper.Manager
import com.google.gson.annotations.Expose
import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.ResultRow
import org.jetbrains.exposed.sql.SqlExpressionBuilder.eq
import org.jetbrains.exposed.sql.select

class Teacher(id: Int? = -1) : User(id){

}

object UserTable : IntIdTable("users") {
    val name = UserTable.varchar("name", 255)
    val email = UserTable.varchar("email", 255).nullable()
    val passhash = UserTable.varchar("passhash", 255).nullable()
//        val college = Data.reference("college_id", Colleges).nullable()
}

