package com.github.zxj5470.ktnl

/**
 * @author: zxj5470
 * @date: 17-11-7
 */

import com.github.zxj5470.ktnl.util.*
import com.github.zxj5470.ktnl.core.*

fun main(args: Array<String>) {
    val args1 = handleArgs(args)
    val f = FileUtil(args1[0])
    parse(f.readText())
    f.close()
}
