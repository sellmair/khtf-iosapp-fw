package com.ekahau.prototypes.khtf.iosappfw

import kotlin.test.Test
import kotlin.test.assertEquals

class TwoLibsSumTest {

    @Test
    fun testSumA() {
        assertEquals(51, com.ekahau.prototypes.khtf.liba.Summator().sum(17, 17))
    }

    @Test
    fun testSumC() {
        assertEquals(1717, com.ekahau.prototypes.khtf.libc.Summator().sum(17, 17))
    }

}