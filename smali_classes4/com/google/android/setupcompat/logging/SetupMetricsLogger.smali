.class public Lcom/google/android/setupcompat/logging/SetupMetricsLogger;
.super Ljava/lang/Object;
.source "SetupMetricsLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logCounter(Landroid/content/Context;Lcom/google/android/setupcompat/logging/MetricKey;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "counterName"    # Lcom/google/android/setupcompat/logging/MetricKey;
    .param p2, "times"    # I

    .line 42
    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v0, "CounterName cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Counter cannot be negative."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 45
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v0

    const/4 v1, 0x3

    .line 48
    invoke-static {p1, p2}, Lcom/google/android/setupcompat/logging/internal/MetricBundleConverter;->createBundleForLoggingCounter(Lcom/google/android/setupcompat/logging/MetricKey;I)Landroid/os/Bundle;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public static logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "customEvent"    # Lcom/google/android/setupcompat/logging/CustomEvent;

    .line 32
    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    const-string v0, "CustomEvent cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v0

    .line 36
    invoke-static {p1}, Lcom/google/android/setupcompat/logging/internal/MetricBundleConverter;->createBundleForLogging(Lcom/google/android/setupcompat/logging/CustomEvent;)Landroid/os/Bundle;

    move-result-object v1

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public static logDuration(Landroid/content/Context;Lcom/google/android/setupcompat/logging/MetricKey;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timerName"    # Lcom/google/android/setupcompat/logging/MetricKey;
    .param p2, "timeInMillis"    # J

    .line 66
    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v0, "Timer name cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Duration cannot be negative."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v0

    const/4 v1, 0x2

    .line 72
    invoke-static {p1, p2, p3}, Lcom/google/android/setupcompat/logging/internal/MetricBundleConverter;->createBundleForLoggingTimer(Lcom/google/android/setupcompat/logging/MetricKey;J)Landroid/os/Bundle;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public static logDuration(Landroid/content/Context;Lcom/google/android/setupcompat/logging/Timer;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timer"    # Lcom/google/android/setupcompat/logging/Timer;

    .line 55
    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string v0, "Timer cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Lcom/google/android/setupcompat/logging/Timer;->isStopped()Z

    move-result v0

    .line 57
    const-string v1, "Timer should be stopped before calling logDuration."

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 59
    nop

    .line 60
    invoke-virtual {p1}, Lcom/google/android/setupcompat/logging/Timer;->getMetricKey()Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/logging/Timer;->getDurationInNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 59
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logDuration(Landroid/content/Context;Lcom/google/android/setupcompat/logging/MetricKey;J)V

    .line 61
    return-void
.end method
