; Copyright (C) 2008 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.source T_lreturn_7.java
.class public dxc/junit/opcodes/lreturn/jm/T_lreturn_7
.super java/lang/Object
.implements java/lang/Runnable

.field  value J
.field  failed Z

.method public <init>()V
    .limit stack 3
    aload_0
    invokespecial java/lang/Object/<init>()V

    aload_0
    lconst_0
    putfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.value J

    aload_0
    iconst_0
    putfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.failed Z

    return

.end method


.method public run()V
    .limit stack 2
    .limit locals 2
   
    iconst_0
    istore_1

Label4:
    iload_1
    sipush 1000
    if_icmpge Label3

    aload_0
    invokespecial dxc/junit/opcodes/lreturn/jm/T_lreturn_7/test()J
    pop2

    iinc 1 1

    goto Label4


Label3:
    return

.end method



.method private synchronized test()J
    .limit stack 5
    .limit locals 3
    
.line 16
    aload_0
    dup
    getfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.value J
    dup2
    lstore_1

    lconst_1
    ladd
    putfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.value J

    lload_1
    lconst_1
    ladd
    lstore_1

    invokestatic java/lang/Thread/yield()V

    lload_1
    aload_0
    getfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.value J
    lcmp
    ifeq Label0

    aload_0
    iconst_1
    putfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.failed Z

Label0:
    lload_1
    lreturn
.end method


.method public static execute()Z
    .limit stack 5
    .limit locals 4

    new dxc/junit/opcodes/lreturn/jm/T_lreturn_7
    dup
    invokespecial dxc/junit/opcodes/lreturn/jm/T_lreturn_7/<init>()V
    astore_0

    new java/lang/Thread
    dup
    aload_0
    invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
    astore_1

    new java/lang/Thread
    dup
    aload_0
    invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
    astore_2

    aload_1
    invokevirtual java/lang/Thread/start()V

    aload_2
    invokevirtual java/lang/Thread/start()V

Label12:
    ldc2_w 5000
    invokestatic java/lang/Thread/sleep(J)V

Label13:
    goto Label0

Label14:            ; exception handler
    astore_3
    goto Label3

Label0:
    aload_0
    getfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.value J
    ldc2_w 2000
    lcmp
    ifne Label3

    aload_0
    getfield dxc.junit.opcodes.lreturn.jm.T_lreturn_7.failed Z
    ifne Label3

    iconst_1
    ireturn

Label3:
    iconst_0
    ireturn

.catch java/lang/InterruptedException from Label12 to Label13 using Label14
.end method