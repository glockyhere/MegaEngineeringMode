.class public abstract Lcom/google/common/io/CharSink;
.super Ljava/lang/Object;
.source "CharSink.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openBufferedStream()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v0

    .line 80
    .local v0, "writer":Ljava/io/Writer;
    instance-of v1, v0, Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Ljava/io/BufferedWriter;

    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 80
    :goto_0
    return-object v1
.end method

.method public abstract openStream()Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 95
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 96
    .local v1, "out":Ljava/io/Writer;
    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 97
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v1    # "out":Ljava/io/Writer;
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 102
    nop

    .line 103
    return-void

    .line 98
    :catchall_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local p0    # "this":Lcom/google/common/io/CharSink;
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lcom/google/common/io/Closer;
    .restart local p0    # "this":Lcom/google/common/io/CharSink;
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 102
    throw v1
.end method

.method public writeFrom(Ljava/lang/Readable;)J
    .locals 4
    .param p1, "readable"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 155
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 156
    .local v1, "out":Ljava/io/Writer;
    invoke-static {p1, v1}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    move-result-wide v2

    .line 157
    .local v2, "written":J
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    nop

    .line 162
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 158
    return-wide v2

    .line 159
    .end local v1    # "out":Ljava/io/Writer;
    .end local v2    # "written":J
    :catchall_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local p0    # "this":Lcom/google/common/io/CharSink;
    .end local p1    # "readable":Ljava/lang/Readable;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lcom/google/common/io/Closer;
    .restart local p0    # "this":Lcom/google/common/io/CharSink;
    .restart local p1    # "readable":Ljava/lang/Readable;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 163
    throw v1
.end method

.method public writeLines(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/io/CharSink;->writeLines(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public writeLines(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 5
    .param p2, "lineSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 129
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openBufferedStream()Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    .line 130
    .local v1, "out":Ljava/io/Writer;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 131
    .local v3, "line":Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 132
    nop

    .end local v3    # "line":Ljava/lang/CharSequence;
    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v1    # "out":Ljava/io/Writer;
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 138
    nop

    .line 139
    return-void

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "closer":Lcom/google/common/io/Closer;
    .end local p0    # "this":Lcom/google/common/io/CharSink;
    .end local p1    # "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    .end local p2    # "lineSeparator":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "closer":Lcom/google/common/io/Closer;
    .restart local p0    # "this":Lcom/google/common/io/CharSink;
    .restart local p1    # "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    .restart local p2    # "lineSeparator":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 138
    throw v1
.end method
