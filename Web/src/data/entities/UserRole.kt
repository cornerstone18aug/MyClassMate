package ca.myclassmate.data.entities

import ca.myclassmate.data.helper.Entity
import ca.myclassmate.data.helper.Manager
import com.google.gson.annotations.Expose
import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.*

open class UserRole(id: Int? = -1) : Entity<User>(id) {
    var user: User? = null
    var role: Role? = null
    companion object : IntIdTable("user_role") {
        val user = UserRole.reference("user_id", User).nullable()
        var role = Role.reference("role_id", Role).nullable()
    }
}
