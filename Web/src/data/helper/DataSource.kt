package ca.myclassmate.data

import com.typesafe.config.ConfigFactory
import io.ktor.config.HoconApplicationConfig
import org.jetbrains.exposed.sql.Database

object DataSource {
    private var connectionStr: String? = null
    private var connection: Database? = null
    private val driver: String = "com.mysql.cj.jdbc.Driver"

    fun getConnection(): Database {
        // get the path of the url
        if (this.connection == null) {
            if (this.connectionStr == null) {
                val appConfig = HoconApplicationConfig(ConfigFactory.load())
                this.connectionStr = appConfig.config("ktor.mysql").property("connection_string").getString()
            }
            this.connection = Database.connect(this.connectionStr!!, this.driver)
        }
        return this.connection!!
    }
}