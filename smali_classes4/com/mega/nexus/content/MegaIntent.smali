.class public Lcom/mega/nexus/content/MegaIntent;
.super Ljava/lang/Object;
.source "MegaIntent.java"


# static fields
.field public static final ACTION_ACCSSIBILITY_KEY_EVENT:Ljava/lang/String; = "com.mega.intent.action.KEY_VIEW_DOWN"

.field public static final ACTION_LAUNCHER_CREATE:Ljava/lang/String; = "com.mega.intent.action.LAUNCHER_CREATE"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final EXTRA_KEY_VIEW_TARGET:Ljava/lang/String; = "com.mega.intent.extra.KEY_VIEW_TARGET"

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
