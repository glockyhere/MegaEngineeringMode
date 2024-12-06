.class public interface abstract Lmega/car/config/KeyInput;
.super Ljava/lang/Object;
.source "KeyInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/KeyInput$Entry;,
        Lmega/car/config/KeyInput$KeyAction;,
        Lmega/car/config/KeyInput$KeyCodeEnum;,
        Lmega/car/config/KeyInput$PressMode;
    }
.end annotation

.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x2c
    permission = "mega.car.permission.KeyInput"
.end annotation


# static fields
.field public static final ID_MAIN_KEY:I = 0x2c000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        changeMode = 0x2
        subscribe = "KeyInput/Event"
        type = Lmega/car/config/KeyInput$Entry;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x2c

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.KeyInput"

.field public static final SERVICE_NAME:Ljava/lang/String; = "KeyInput"

.field public static final UNSUPPORTED_CODE:I = -0x1
