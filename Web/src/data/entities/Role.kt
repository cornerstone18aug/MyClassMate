package ca.myclassmate.data.entities

import ca.myclassmate.data.helper.Entity
import ca.myclassmate.data.helper.Manager
import org.jetbrains.exposed.dao.IntIdTable
import org.jetbrains.exposed.sql.*


open class Role(id: Int? = -1) : Entity<Role>(id) {
    lateinit var key: String
    var description: String? = null

    companion object : IntIdTable("role") {
        val key = this.varchar("key", 200).index()
        val description = this.varchar("description", 200).nullable()
    }
}

object RoleManager : Manager<Role> {
    override fun delete(id: Int): Boolean {
        var qty = Role.deleteWhere { Role.id eq id }
        return qty > 0
    }

    override fun save(entity: Role): Role {
        if (entity.id <= 0 || entity.id == null) {
            Role.insert {
                it[Role.key] = entity.key
                it[Role.description] = entity.description
            }
        } else {
            Role.update({ Role.id eq entity.id }) {
                it[Role.key] = entity.key
                it[Role.description] = entity.description
            }
        }
        return entity
    }

    override fun find(id: Int): Role {
        var row = Role.select({ Role.id eq id }).first()
        return this.converter(row)
    }

    override fun findAll(): MutableList<Role> {
        var rows = Role.selectAll().toMutableList()
        var items = rows.map { this.converter(it) }.toMutableList()
        return items
    }

    override fun converter(row: ResultRow): Role {
        var role = Role()
        role.key = row[Role.key]
        role.description = row[Role.description]
        return role
    }

}