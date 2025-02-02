.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2
    .param p1, "manager"    # Landroidx/fragment/app/FragmentManager;

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;-><init>(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    .line 142
    return-void
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z
    .locals 2
    .param p0, "op"    # Landroidx/fragment/app/FragmentTransaction$Op;

    .line 676
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 677
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_0

    .line 678
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 677
    :goto_0
    return v1
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .locals 7
    .param p1, "amt"    # I

    .line 259
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    .local v1, "numOps":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 267
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 268
    .local v4, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 269
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 270
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v4    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "opNum":I
    :cond_3
    return-void
.end method

.method public commit()I
    .locals 1

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .line 310
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_2

    .line 311
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Landroidx/fragment/app/LogWriter;

    invoke-direct {v0, v1}, Landroidx/fragment/app/LogWriter;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "logw":Landroidx/fragment/app/LogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 315
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 316
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 318
    .end local v0    # "logw":Landroidx/fragment/app/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 319
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->allocBackStackIndex()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 324
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 325
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0

    .line 310
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commitNow()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 300
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 301
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    .line 306
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    .line 307
    return-void
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 223
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iput-object v0, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 185
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 59
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .line 62
    if-eqz p3, :cond_8

    .line 63
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 65
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 66
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    :cond_2
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v0, :cond_4

    .line 77
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_4
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 83
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    :cond_6
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 89
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 96
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 97
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    if-ge v1, v0, :cond_d

    .line 100
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 102
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 113
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 111
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 110
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v3, "ATTACH"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 109
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v3, "DETACH"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 108
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v3, "SHOW"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 107
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v3, "HIDE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v3, "REMOVE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_8
    const-string v3, "REPLACE"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 104
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_9
    const-string v3, "ADD"

    .restart local v3    # "cmdStr":Ljava/lang/String;
    goto :goto_1

    .line 103
    .end local v3    # "cmdStr":Ljava/lang/String;
    :pswitch_a
    const-string v3, "NULL"

    .line 116
    .restart local v3    # "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 117
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    if-eqz p3, :cond_c

    .line 120
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v4, :cond_9

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v4, :cond_a

    .line 121
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v4, " exitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    :cond_a
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v4, :cond_b

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v4, :cond_c

    .line 127
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    const-string v4, " popExitAnim=#"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v3    # "cmdStr":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 135
    .end local v0    # "numOps":I
    .end local v1    # "opNum":I
    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method executeOps()V
    .locals 7

    .line 397
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 399
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 400
    .local v3, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 401
    .local v4, "f":Landroidx/fragment/app/Fragment;
    if-eqz v4, :cond_0

    .line 402
    iget v5, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 403
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 405
    :cond_0
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 443
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 440
    :pswitch_1
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v6, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 441
    goto :goto_1

    .line 437
    :pswitch_2
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 438
    goto :goto_1

    .line 434
    :pswitch_3
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 435
    goto :goto_1

    .line 429
    :pswitch_4
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 430
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 431
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 432
    goto :goto_1

    .line 425
    :pswitch_5
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 426
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 427
    goto :goto_1

    .line 420
    :pswitch_6
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 421
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 422
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 423
    goto :goto_1

    .line 416
    :pswitch_7
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 417
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 418
    goto :goto_1

    .line 412
    :pswitch_8
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 413
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 414
    goto :goto_1

    .line 407
    :pswitch_9
    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 408
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 409
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 410
    nop

    .line 445
    :goto_1
    iget-boolean v5, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_2

    iget v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v5, v2, :cond_2

    if-eqz v4, :cond_2

    .line 446
    sget-boolean v2, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_2

    .line 449
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 398
    .end local v3    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v4    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 453
    .end local v1    # "opNum":I
    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v1, :cond_4

    .line 455
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v3, v1, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 457
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method executePopOps(Z)V
    .locals 6
    .param p1, "moveToState"    # Z

    .line 467
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_3

    .line 468
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 469
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 470
    .local v3, "f":Landroidx/fragment/app/Fragment;
    if-eqz v3, :cond_0

    .line 471
    iget v4, p0, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->reverseTransit(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 473
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->setSharedElementNames(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 475
    :cond_0
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v4, :pswitch_data_0

    .line 513
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :pswitch_1
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget-object v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/FragmentManager;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    .line 511
    goto :goto_1

    .line 507
    :pswitch_2
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 508
    goto :goto_1

    .line 504
    :pswitch_3
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    .line 505
    goto :goto_1

    .line 499
    :pswitch_4
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 500
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 501
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;)V

    .line 502
    goto :goto_1

    .line 495
    :pswitch_5
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 496
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;)V

    .line 497
    goto :goto_1

    .line 490
    :pswitch_6
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 491
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 492
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 493
    goto :goto_1

    .line 486
    :pswitch_7
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 487
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 488
    goto :goto_1

    .line 482
    :pswitch_8
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 483
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 484
    goto :goto_1

    .line 477
    :pswitch_9
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 478
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3, v1}, Landroidx/fragment/app/FragmentManager;->setExitAnimationOrder(Landroidx/fragment/app/Fragment;Z)V

    .line 479
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 480
    nop

    .line 515
    :goto_1
    iget-boolean v4, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_2

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    if-eqz v3, :cond_2

    .line 516
    sget-boolean v4, Landroidx/fragment/app/FragmentManager;->USE_STATE_MANAGER:Z

    if-eqz v4, :cond_1

    .line 517
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->createOrGetFragmentStateManager(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    goto :goto_2

    .line 519
    :cond_1
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    .line 467
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 523
    .end local v0    # "opNum":I
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 524
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    iget v2, v0, Landroidx/fragment/app/FragmentManager;->mCurState:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentManager;->moveToState(IZ)V

    .line 526
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 12
    .param p2, "oldPrimaryNav"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 552
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 553
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 554
    .local v1, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v6, 0x9

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const/4 v4, 0x7

    if-eq v2, v4, :cond_8

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    .line 609
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v4, v6, p2}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 610
    add-int/lit8 v0, v0, 0x1

    .line 612
    iget-object p2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_4

    .line 561
    :cond_1
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 562
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne v2, p2, :cond_9

    .line 563
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentTransaction$Op;

    iget-object v5, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v4, v6, v5}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 564
    add-int/lit8 v0, v0, 0x1

    .line 565
    const/4 p2, 0x0

    goto :goto_4

    .line 570
    :cond_2
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 571
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget v4, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 572
    .local v4, "containerId":I
    const/4 v7, 0x0

    .line 573
    .local v7, "alreadyAdded":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_6

    .line 574
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 575
    .local v9, "old":Landroidx/fragment/app/Fragment;
    iget v10, v9, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v10, v4, :cond_5

    .line 576
    if-ne v9, v2, :cond_3

    .line 577
    const/4 v7, 0x1

    goto :goto_2

    .line 581
    :cond_3
    if-ne v9, p2, :cond_4

    .line 582
    iget-object v10, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v11, v6, v9}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v10, v0, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    .line 584
    const/4 p2, 0x0

    .line 586
    :cond_4
    new-instance v10, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v10, v5, v9}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 587
    .local v10, "removeOp":Landroidx/fragment/app/FragmentTransaction$Op;
    iget v11, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 588
    iget v11, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 589
    iget v11, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 590
    iget v11, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 591
    iget-object v11, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 592
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    add-int/2addr v0, v3

    .line 573
    .end local v9    # "old":Landroidx/fragment/app/Fragment;
    .end local v10    # "removeOp":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 597
    .end local v8    # "i":I
    :cond_6
    if-eqz v7, :cond_7

    .line 598
    iget-object v5, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 599
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 601
    :cond_7
    iput v3, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 602
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    .end local v4    # "containerId":I
    .end local v7    # "alreadyAdded":Z
    :goto_3
    goto :goto_4

    .line 557
    :cond_8
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    nop

    .line 552
    .end local v1    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_9
    :goto_4
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 617
    .end local v0    # "opNum":I
    :cond_a
    return-object p2
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 340
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManager;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    .line 349
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 175
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 158
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 165
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 152
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 146
    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 684
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 201
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method interactsWith(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .line 353
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 354
    .local v0, "numOps":I
    const/4 v1, 0x0

    .local v1, "opNum":I
    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 355
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 356
    .local v3, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v2, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 357
    .local v2, "fragContainer":I
    :cond_0
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_1

    .line 358
    const/4 v4, 0x1

    return v4

    .line 354
    .end local v2    # "fragContainer":I
    .end local v3    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "opNum":I
    :cond_2
    return v2
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 365
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    .line 366
    return v0

    .line 368
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "numOps":I
    const/4 v2, -0x1

    .line 370
    .local v2, "lastContainer":I
    const/4 v3, 0x0

    .local v3, "opNum":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 371
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 372
    .local v4, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v5, v5, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_1
    move v5, v0

    .line 373
    .local v5, "container":I
    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v2, :cond_5

    .line 374
    move v2, v5

    .line 375
    move v6, p2

    .local v6, "i":I
    :goto_2
    if-ge v6, p3, :cond_5

    .line 376
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/BackStackRecord;

    .line 377
    .local v7, "record":Landroidx/fragment/app/BackStackRecord;
    iget-object v8, v7, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 378
    .local v8, "numThoseOps":I
    const/4 v9, 0x0

    .local v9, "thoseOpIndex":I
    :goto_3
    if-ge v9, v8, :cond_4

    .line 379
    iget-object v10, v7, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 380
    .local v10, "thatOp":Landroidx/fragment/app/FragmentTransaction$Op;
    iget-object v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_2

    .line 381
    iget-object v11, v10, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v11, v11, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_4

    :cond_2
    move v11, v0

    .line 382
    .local v11, "thatContainer":I
    :goto_4
    if-ne v11, v5, :cond_3

    .line 383
    const/4 v0, 0x1

    return v0

    .line 378
    .end local v10    # "thatOp":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v11    # "thatContainer":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 375
    .end local v7    # "record":Landroidx/fragment/app/BackStackRecord;
    .end local v8    # "numThoseOps":I
    .end local v9    # "thoseOpIndex":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 370
    .end local v4    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    .end local v5    # "container":I
    .end local v6    # "i":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "opNum":I
    :cond_6
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 689
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .locals 3

    .line 657
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 658
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 659
    .local v1, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    invoke-static {v1}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    const/4 v2, 0x1

    return v2

    .line 657
    .end local v1    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "opNum":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 190
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public runOnCommitRunnables()V
    .locals 2

    .line 279
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    .line 285
    :cond_1
    return-void
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 247
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_1

    .line 251
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set maximum Lifecycle below "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 667
    const/4 v0, 0x0

    .local v0, "opNum":I
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 668
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 669
    .local v1, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    invoke-static {v1}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    .line 667
    .end local v1    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "opNum":I
    :cond_1
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 234
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 212
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a FragmentManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 46
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 50
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 5
    .param p2, "oldPrimaryNav"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 631
    .local p1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "opNum":I
    :goto_0
    if-ltz v0, :cond_2

    .line 632
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 633
    .local v2, "op":Landroidx/fragment/app/FragmentTransaction$Op;
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 649
    :pswitch_0
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_1

    .line 643
    :pswitch_1
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 644
    goto :goto_1

    .line 646
    :pswitch_2
    const/4 p2, 0x0

    .line 647
    goto :goto_1

    .line 640
    :cond_0
    :pswitch_3
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    goto :goto_1

    .line 636
    :cond_1
    :pswitch_4
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    nop

    .line 631
    .end local v2    # "op":Landroidx/fragment/app/FragmentTransaction$Op;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 653
    .end local v0    # "opNum":I
    :cond_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
