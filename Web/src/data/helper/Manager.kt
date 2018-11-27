package ca.myclassmate.data.helper

import org.jetbrains.exposed.sql.ResultRow

interface Manager<T> {
    fun delete(id: Int): Boolean
    fun save(entity: T): T
    fun find(id: Int): T
    fun findAll(): MutableList<T>
    fun converter(row: ResultRow): T
}