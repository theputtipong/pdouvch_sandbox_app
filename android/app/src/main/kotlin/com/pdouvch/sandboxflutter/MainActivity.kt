package com.pdouvch.sandboxflutter

import android.provider.Settings.Secure
import android.provider.Settings.Secure.*
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "pdouvch.com/channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "getDeviceId" -> {
                        val id = getAndroidDeviceId()
                        if (id != null) {
                            result.success(id)
                        } else {
                            result.error("UNAVAILABLE", "Device ID not available.", null)
                        }
                    }

                    else -> {
                        result.notImplemented()
                    }
                }
            }
    }

    fun getAndroidDeviceId(): String? {
        return try {
            getString(/* resolver = */ contentResolver, /* name = */ ANDROID_ID)
        } catch (e: Exception) {
            "error_getting_device_id"
        }
    }
}
