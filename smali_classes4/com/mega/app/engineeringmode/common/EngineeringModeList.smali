.class public Lcom/mega/app/engineeringmode/common/EngineeringModeList;
.super Ljava/lang/Object;
.source "EngineeringModeList.java"


# static fields
.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TYPE_FRAGMENT:Ljava/lang/String; = "fragment"


# instance fields
.field private className:Ljava/lang/String;

.field private fragmentName:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private showType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "showType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "fragmentName"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->showType:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->packageName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->className:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->fragmentName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static pareseJsonToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 73
    .local v1, "am":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->fragmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->showType:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->className:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFragmentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->fragmentName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->packageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setShowType(Ljava/lang/String;)V
    .locals 0
    .param p1, "showType"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->showType:Ljava/lang/String;

    .line 45
    return-void
.end method
