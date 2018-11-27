package ca.myclassmate.data.helper

import com.google.gson.Gson

abstract class Entity<T> {
    var id: Int = -1
    constructor(id: Int?) {
        this.id = id!!
    }
    fun toJson(): String {
        return Gson().toJson(this)
    }
}