.class public Lcom/mega/app/engineeringmode/common/EngineeringModeNative;
.super Ljava/lang/Object;
.source "EngineeringModeNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, "cert_pwd_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getCertPwd()Ljava/lang/String;
.end method
