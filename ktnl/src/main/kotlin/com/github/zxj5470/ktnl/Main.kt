package com.github.zxj5470.ktnl

/**
 * @author: zxj5470
 * @date: 17-11-7
 */

import com.github.zxj5470.ktnl.util.*
import com.github.zxj5470.ktnl.core.*
import platform.posix.*

fun main(args: Array<String>) {
    val args1 = handleArgs(args)

    FileUtil(args1[0])?.run {
        parse(readText())
    }

//    val s=Stack<Char>()
//    for(i in 65..100) s.push(i.toChar())
//    println(s.size)
//    s.forEach { println(it) }
    
}
