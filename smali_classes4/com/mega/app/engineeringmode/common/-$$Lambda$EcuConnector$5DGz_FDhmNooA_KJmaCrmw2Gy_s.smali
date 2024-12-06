.class public final synthetic Lcom/mega/app/engineeringmode/common/-$$Lambda$EcuConnector$5DGz_FDhmNooA_KJmaCrmw2Gy_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/mega/system/ecu_info/V1_0/IEcuInfo$getPropertyCallback;


# instance fields
.field public final synthetic f$0:Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/app/engineeringmode/common/-$$Lambda$EcuConnector$5DGz_FDhmNooA_KJmaCrmw2Gy_s;->f$0:Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mega/app/engineeringmode/common/-$$Lambda$EcuConnector$5DGz_FDhmNooA_KJmaCrmw2Gy_s;->f$0:Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;

    invoke-static {v0, p1, p2}, Lcom/mega/app/engineeringmode/common/EcuConnector;->lambda$getProperty$0(Lcom/mega/app/engineeringmode/common/EcuConnector$MutableString;ILjava/lang/String;)V

    return-void
.end method
