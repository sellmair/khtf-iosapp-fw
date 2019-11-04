package com.ekahau.prototypes.khtf.iosappfw

/**
 * To deal with overlapping class names, their functionality could be exposed.
 */
class SummatorFw {

    //basic sum
    fun sum(a: Int, b: Int): Int = a + b

    //sum from lib A
    fun sumA(a: Int, b: Int): Int = com.ekahau.prototypes.khtf.liba.Summator().sum(a,b)

    //sum2 from lib A
    fun sumA2(a: Int, b: Int): Int = com.ekahau.prototypes.khtf.liba.Summator().sum2(a,b)

    //sum from lib C
    fun sumC(a: Int, b: Int): Int = com.ekahau.prototypes.khtf.libc.Summator().sum(a,b)

    //get class Summator from lib C
    fun getSummatorC(): com.ekahau.prototypes.khtf.libc.Summator = com.ekahau.prototypes.khtf.libc.Summator()

    fun testFiles() {
        com.ekahau.prototypes.khtf.libh.ColorProviderFactory.colorProvider
    }

}