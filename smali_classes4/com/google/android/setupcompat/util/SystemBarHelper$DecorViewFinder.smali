.class Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/util/SystemBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecorViewFinder"
.end annotation


# instance fields
.field private callback:Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;

.field private final checkDecorViewRunnable:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private retries:I

.field private window:Landroid/view/Window;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->handler:Landroid/os/Handler;

    .line 317
    new-instance v0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder$1;-><init>(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)V

    iput-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->checkDecorViewRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/setupcompat/util/SystemBarHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$1;

    .line 310
    invoke-direct {p0}, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->window:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->callback:Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->retries:I

    return v0
.end method

.method static synthetic access$510(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->retries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->retries:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->checkDecorViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;

    .line 310
    iget-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getDecorView(Landroid/view/Window;Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;I)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "callback"    # Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;
    .param p3, "retries"    # I

    .line 339
    iput-object p1, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->window:Landroid/view/Window;

    .line 340
    iput p3, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->retries:I

    .line 341
    iput-object p2, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->callback:Lcom/google/android/setupcompat/util/SystemBarHelper$OnDecorViewInstalledListener;

    .line 342
    iget-object v0, p0, Lcom/google/android/setupcompat/util/SystemBarHelper$DecorViewFinder;->checkDecorViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 343
    return-void
.end method
