.class public Lcom/google/android/setupdesign/util/Partner;
.super Ljava/lang/Object;
.source "Partner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    }
.end annotation


# static fields
.field private static final ACTION_PARTNER_CUSTOMIZATION:Ljava/lang/String; = "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

.field private static final TAG:Ljava/lang/String; = "(setupdesign) Partner"

.field private static partner:Lcom/google/android/setupdesign/util/Partner;

.field private static searched:Z


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/google/android/setupdesign/util/Partner;->packageName:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    .line 204
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/setupdesign/util/Partner;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/google/android/setupdesign/util/Partner;

    monitor-enter v0

    .line 154
    :try_start_0
    sget-boolean v1, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    if-nez v1, :cond_4

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 156
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.setupwizard.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "intent":Landroid/content/Intent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 159
    const v3, 0x1c0200

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_0

    .line 169
    .end local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    const/16 v3, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 172
    .restart local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_1

    .line 174
    goto :goto_1

    .line 176
    :cond_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v8, v6

    if-eqz v8, :cond_2

    .line 179
    :try_start_1
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .line 180
    .local v8, "res":Landroid/content/res/Resources;
    new-instance v9, Lcom/google/android/setupdesign/util/Partner;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/google/android/setupdesign/util/Partner;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    sput-object v9, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_2

    .line 182
    .end local v8    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v6

    .line 183
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v8, "(setupdesign) Partner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find resources for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_1

    .line 187
    :cond_3
    :goto_2
    sput-boolean v6, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    .line 189
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    sget-object v1, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 153
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 96
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    move-result-object v0

    .line 97
    .local v0, "resourceEntry":Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 78
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    move-result-object v0

    .line 79
    .local v0, "entry":Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 120
    invoke-static {p0}, Lcom/google/android/setupdesign/util/Partner;->get(Landroid/content/Context;)Lcom/google/android/setupdesign/util/Partner;

    move-result-object v0

    .line 121
    .local v0, "partner":Lcom/google/android/setupdesign/util/Partner;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, "ourResources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupdesign/util/Partner;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 126
    .local v4, "partnerId":I
    if-eqz v4, :cond_0

    .line 127
    new-instance v5, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/util/Partner;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;-><init>(Ljava/lang/String;Landroid/content/res/Resources;IZ)V

    return-object v5

    .line 130
    .end local v1    # "ourResources":Landroid/content/res/Resources;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "partnerId":I
    :cond_0
    new-instance v1, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;-><init>(Ljava/lang/String;Landroid/content/res/Resources;IZ)V

    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 88
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    move-result-object v0

    .line 89
    .local v0, "entry":Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringArray(Landroid/content/Context;I)Ljava/util/Set;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    move-result-object v0

    .line 68
    .local v0, "resourceEntry":Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v3, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 105
    invoke-static {p0, p1}, Lcom/google/android/setupdesign/util/Partner;->getResourceEntry(Landroid/content/Context;I)Lcom/google/android/setupdesign/util/Partner$ResourceEntry;

    move-result-object v0

    .line 106
    .local v0, "entry":Lcom/google/android/setupdesign/util/Partner$ResourceEntry;
    iget-object v1, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/google/android/setupdesign/util/Partner$ResourceEntry;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized resetForTesting()V
    .locals 2

    const-class v0, Lcom/google/android/setupdesign/util/Partner;

    monitor-enter v0

    .line 194
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/google/android/setupdesign/util/Partner;->searched:Z

    .line 195
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/setupdesign/util/Partner;->partner:Lcom/google/android/setupdesign/util/Partner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v0

    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/setupdesign/util/Partner;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/setupdesign/util/Partner;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/setupdesign/util/Partner;->resources:Landroid/content/res/Resources;

    return-object v0
.end method
