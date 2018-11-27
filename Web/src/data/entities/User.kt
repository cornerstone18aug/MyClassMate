package ca.myclassmate.data.entities

import ca.myclassmate.data.helper.Entity
import ca.myclassmate.data.helper.Manager
import com.google.gson.annotations.Expose
import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.*

open class User(id: Int? = -1) : Entity<User>(id) {
    var name: String? = ""
    var email: String? = ""
    @Expose(serialize = false, deserialize = false)
    var passhash: String? = ""

    companion object : IntIdTable("users") {
        val name = this.varchar("name", 255).nullable()
        val email = this.varchar("email", 255).nullable()
        val passhash = this.varchar("passhash", 255).nullable()
        // val college = Data.reference("college_id", Colleges).nullable()
    }
}


object UserManager : Manager<User> {
    override fun converter(row: ResultRow): User {
        var user = User()
        user.name = row[User.name]
        user.email = row[User.email]
        user.passhash = row[User.passhash]
        return user
    }

    override fun delete(id: Int): Boolean {
        var qty = User.deleteWhere { User.id eq id }
        return qty > 0
    }

    override fun save(entity: User): User {
        if (entity.id <= 0 || entity.id == null) {
            User.insert {
                it[User.name] = entity.name
                it[User.passhash] = entity.passhash
                it[User.email] = entity.email
            }
        } else {
            User.update({ User.id eq entity.id }) {
                it[User.name] = entity.name
                it[User.passhash] = entity.passhash
                it[User.email] = entity.email
            }
        }
        return entity
    }

    override fun find(id: Int): User {
        var row = User.select { UserTable.id eq id }.first()
        var user = this.converter(row)
        return user
    }

    override fun findAll(): MutableList<User> {
        var rows = UserTable.selectAll().toMutableList()
        var items = rows.map { this.converter(it) }.toMutableList()
        return items
    }

}