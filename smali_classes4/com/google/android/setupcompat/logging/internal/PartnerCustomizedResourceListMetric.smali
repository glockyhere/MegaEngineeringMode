.class public Lcom/google/android/setupcompat/logging/internal/PartnerCustomizedResourceListMetric;
.super Ljava/lang/Object;
.source "PartnerCustomizedResourceListMetric.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildLogBundleFromResourceConfigBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/PersistableBundle;
    .locals 6
    .param p0, "defaultPackageName"    # Ljava/lang/String;
    .param p1, "resourceConfigBundle"    # Landroid/os/Bundle;

    .line 46
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 47
    .local v0, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 49
    .local v3, "resourceExtra":Landroid/os/Bundle;
    const-string v4, "packageName"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-string v4, "resourceName"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "resourceExtra":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method public static logMetrics(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 34
    nop

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/setupcompat/logging/internal/PartnerCustomizedResourceListMetric;->buildLogBundleFromResourceConfigBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 36
    .local v0, "logBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    nop

    .line 39
    const-string v1, "PartnerCustomizationResource"

    invoke-static {v1, p1}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/logging/CustomEvent;->create(Lcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/logging/CustomEvent;

    move-result-object v1

    .line 37
    invoke-static {p0, v1}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    .line 41
    :cond_0
    return-void
.end method
