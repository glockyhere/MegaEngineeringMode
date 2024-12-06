.class public Lcom/mega/app/engineeringmode/offline/OfflineActivity;
.super Lcom/mega/app/engineeringmode/base/BaseActivity;
.source "OfflineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;,
        Lcom/mega/app/engineeringmode/offline/OfflineActivity$ViewDidHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClearBtn:Landroid/widget/Button;

.field private mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

.field private mDidAdapter:Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

.field private mDidInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mega/app/engineeringmode/offline/DidItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDidItemListview:Landroid/widget/ListView;

.field private mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

.field private mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

.field private mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

.field protected mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mService:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-direct {v0}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;-><init>()V

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    return-void
.end method

.method static synthetic access$100(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidAdapter:Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidItemListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)Lcom/mega/app/engineeringmode/common/EcuConnector;
    .locals 1
    .param p0, "x0"    # Lcom/mega/app/engineeringmode/offline/OfflineActivity;

    .line 45
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearVehiclConfig()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, "did_set"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-direct {p0, v1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->convertConfigToArray(Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "misc_service/command/did_request"

    invoke-virtual {v0, v2, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 234
    sget-object v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendMsg topic:misc_service/command/did_request, vehicle type:1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method private convertConfigToArray(Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "config"    # Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    const/4 v2, 0x0

    .line 257
    .local v2, "end":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v3, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertConfigToArray gson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v1
.end method

.method private getProvider(Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;Landroid/widget/Spinner;Landroid/widget/Spinner;)Lcom/mega/app/engineeringmode/offline/AbsProvider;
    .locals 2
    .param p1, "type"    # Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;
    .param p2, "did"    # Landroid/widget/Spinner;
    .param p3, "vehicleType"    # Landroid/widget/Spinner;

    .line 114
    sget-object v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity$3;->$SwitchMap$com$mega$app$engineeringmode$offline$AbsProvider$Type:[I

    invoke-virtual {p1}, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/mega/app/engineeringmode/offline/SepangProvider;

    invoke-direct {v0, p2, p3}, Lcom/mega/app/engineeringmode/offline/SepangProvider;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v0

    .line 120
    :cond_1
    new-instance v0, Lcom/mega/app/engineeringmode/offline/SolvangProvider;

    invoke-direct {v0, p2, p3}, Lcom/mega/app/engineeringmode/offline/SolvangProvider;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v0

    .line 118
    :cond_2
    new-instance v0, Lcom/mega/app/engineeringmode/offline/MonzaProvider;

    invoke-direct {v0, p2, p3}, Lcom/mega/app/engineeringmode/offline/MonzaProvider;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v0

    .line 116
    :cond_3
    new-instance v0, Lcom/mega/app/engineeringmode/offline/BigsurProvider;

    invoke-direct {v0, p2, p3}, Lcom/mega/app/engineeringmode/offline/BigsurProvider;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    return-object v0
.end method

.method public static loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mega/app/engineeringmode/offline/DidItemInfo;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {p0, p1}, Lcom/mega/app/engineeringmode/common/EngineeringModeList;->pareseJsonToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 162
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v2, 0x0

    .line 164
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 165
    :try_start_1
    const-string v3, "didInfoList"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_1

    .line 167
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    nop

    .line 171
    :goto_2
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "json":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/mega/app/engineeringmode/offline/OfflineActivity$2;

    invoke-direct {v5}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$2;-><init>()V

    .line 175
    invoke-virtual {v5}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 173
    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 176
    .local v4, "didInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/app/engineeringmode/offline/DidItemInfo;>;"
    return-object v4

    .line 178
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "didInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mega/app/engineeringmode/offline/DidItemInfo;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
.end method

.method private setVehicleType()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    const-string v1, "No provider to config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/offline/AbsProvider;->getVehicleType()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setCommand(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v2, "set"

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setOperation(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    const-string v2, "did_set"

    invoke-virtual {v1, v2}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setId(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-virtual {v1, v0}, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;->setParameter(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mConfigData:Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;

    invoke-direct {p0, v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->convertConfigToArray(Lcom/mega/app/engineeringmode/common/Constants$PARAMS$UpdateJson;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "misc_service/command/did_request"

    invoke-virtual {v1, v3, v2}, Lcom/mega/app/engineeringmode/common/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 249
    sget-object v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMsg topic:misc_service/command/did_request, vehicle type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method private trim()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/app/engineeringmode/offline/DidItemInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/offline/DidItemInfo;

    .line 132
    .local v1, "didItemInfo":Lcom/mega/app/engineeringmode/offline/DidItemInfo;
    invoke-virtual {v1}, Lcom/mega/app/engineeringmode/offline/DidItemInfo;->getDidKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 133
    .local v2, "key":I
    iget-object v3, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    invoke-virtual {v3, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getIntProperty(I)I

    move-result v3

    .line 134
    .local v3, "value":I
    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 137
    .end local v1    # "didItemInfo":Lcom/mega/app/engineeringmode/offline/DidItemInfo;
    .end local v2    # "key":I
    .end local v3    # "value":I
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total did info list size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V

    invoke-virtual {p0, v1}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$1$OfflineActivity()V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->setVehicleType()V

    return-void
.end method

.method public synthetic lambda$onClick$2$OfflineActivity()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->clearVehiclConfig()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$OfflineActivity()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->trim()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09005b

    if-eq v0, v1, :cond_3

    const v1, 0x7f09005e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mega/app/engineeringmode/offline/AbsProvider;->getVehicleConfig()I

    move-result v0

    const v2, 0x330ffffe

    if-ne v0, v2, :cond_1

    .line 267
    const v0, 0x7f0e00a2

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const/high16 v2, 0x33100000

    invoke-virtual {v0, v2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getIntProperty(I)I

    move-result v0

    .line 272
    .local v0, "currentType":I
    sget-object v2, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick Current type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/mega/app/engineeringmode/offline/AbsProvider;->mVehicleType:I

    if-ne v2, v0, :cond_2

    .line 274
    const v2, 0x7f0e0052

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$oG-hVK0AHHeT1GZt8UYZDoTNNn8;

    invoke-direct {v2, p0}, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$oG-hVK0AHHeT1GZt8UYZDoTNNn8;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 278
    goto :goto_0

    .line 280
    .end local v0    # "currentType":I
    :cond_3
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$IbJ5d3jUzFl4ojqGrXdF9tGCbF0;

    invoke-direct {v1, p0}, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$IbJ5d3jUzFl4ojqGrXdF9tGCbF0;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 281
    nop

    .line 286
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->setContentView(I)V

    .line 72
    invoke-static {}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getInstance()Lcom/mega/app/engineeringmode/common/EcuConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    .line 73
    invoke-static {}, Lcom/mega/app/engineeringmode/common/MegaConnector;->getInstance()Lcom/mega/app/engineeringmode/common/MegaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    .line 74
    const-string v1, "misc_service/command/did_response"

    invoke-virtual {v0, p0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->addCallback(Lcom/mega/app/engineeringmode/common/MegaConnector$Callback;Ljava/lang/String;)V

    .line 76
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "product":Ljava/lang/String;
    sget-object v2, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Product name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f0901e7

    const v4, 0x7f09009e

    if-nez v2, :cond_1

    const-string v2, "bigsur"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string v2, "santamonica"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    :cond_0
    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->BIGSUR:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-virtual {p0, v4}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v5, v6}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->getProvider(Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;Landroid/widget/Spinner;Landroid/widget/Spinner;)Lcom/mega/app/engineeringmode/offline/AbsProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "solvang"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 82
    const-string v2, "saguaro"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    :cond_2
    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SOLVANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-virtual {p0, v4}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v5, v6}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->getProvider(Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;Landroid/widget/Spinner;Landroid/widget/Spinner;)Lcom/mega/app/engineeringmode/offline/AbsProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "monza"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->MONZA:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-virtual {p0, v4}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v5, v6}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->getProvider(Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;Landroid/widget/Spinner;Landroid/widget/Spinner;)Lcom/mega/app/engineeringmode/offline/AbsProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sepang"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    sget-object v2, Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;->SEPANG:Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;

    invoke-virtual {p0, v4}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-direct {p0, v2, v5, v6}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->getProvider(Lcom/mega/app/engineeringmode/offline/AbsProvider$Type;Landroid/widget/Spinner;Landroid/widget/Spinner;)Lcom/mega/app/engineeringmode/offline/AbsProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    .line 90
    :cond_5
    :goto_0
    const v2, 0x7f09005e

    invoke-virtual {p0, v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mButton:Landroid/widget/Button;

    .line 91
    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mClearBtn:Landroid/widget/Button;

    .line 92
    const-string v2, "ro.build.type"

    invoke-static {v2, v1}, Lcom/mega/app/engineeringmode/common/Util;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "buildType":Ljava/lang/String;
    const-string v2, "user"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mClearBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    :cond_6
    const-string v2, "did.json"

    invoke-static {p0, v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidInfoList:Ljava/util/ArrayList;

    .line 102
    new-instance v2, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;Lcom/mega/app/engineeringmode/offline/OfflineActivity$1;)V

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidAdapter:Lcom/mega/app/engineeringmode/offline/OfflineActivity$DidAdapter;

    .line 103
    const v2, 0x7f09009f

    invoke-virtual {p0, v2}, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mDidItemListview:Landroid/widget/ListView;

    .line 104
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$Ntl7BkxTH63vE7DuXZ04H4p2cmg;

    invoke-direct {v3, p0}, Lcom/mega/app/engineeringmode/offline/-$$Lambda$OfflineActivity$Ntl7BkxTH63vE7DuXZ04H4p2cmg;-><init>(Lcom/mega/app/engineeringmode/offline/OfflineActivity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 105
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mClearBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mEcuConnector:Lcom/mega/app/engineeringmode/common/EcuConnector;

    const/high16 v3, 0x33100000

    invoke-virtual {v2, v3}, Lcom/mega/app/engineeringmode/common/EcuConnector;->getIntProperty(I)I

    move-result v2

    .line 108
    .local v2, "vehicleType":I
    sget-object v3, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current vehicle type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mProvider:Lcom/mega/app/engineeringmode/offline/AbsProvider;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p0, v2}, Lcom/mega/app/engineeringmode/offline/AbsProvider;->init(Landroid/content/Context;I)V

    .line 110
    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->mMegaConnector:Lcom/mega/app/engineeringmode/common/MegaConnector;

    const-string v1, "misc_service/command/did_response"

    invoke-virtual {v0, v1}, Lcom/mega/app/engineeringmode/common/MegaConnector;->removeCallback(Ljava/lang/String;)V

    .line 291
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onDestroy()V

    .line 292
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 296
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onPause()V

    .line 297
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/common/primitives/Bytes;->toArray(Ljava/util/Collection;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive topic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "misc_service/command/did_response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;

    .line 64
    .local v1, "ri":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;
    sget-object v2, Lcom/mega/app/engineeringmode/offline/OfflineActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive result status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v1    # "ri":Lcom/mega/app/engineeringmode/common/Constants$PARAMS$ResultInfo;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 301
    invoke-super {p0}, Lcom/mega/app/engineeringmode/base/BaseActivity;->onResume()V

    .line 302
    return-void
.end method
