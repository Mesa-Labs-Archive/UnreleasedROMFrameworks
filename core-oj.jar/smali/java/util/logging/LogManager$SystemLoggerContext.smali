.class final Ljava/util/logging/LogManager$SystemLoggerContext;
.super Ljava/util/logging/LogManager$LoggerContext;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemLoggerContext"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 1

    iput-object p1, p0, Ljava/util/logging/LogManager$SystemLoggerContext;->this$0:Ljava/util/logging/LogManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$LoggerContext;)V

    return-void
.end method


# virtual methods
.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v0, Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/LogManager$SystemLoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$SystemLoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v6, v0

    :goto_0
    if-eqz v6, :cond_0

    :cond_1
    return-object v6

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    goto :goto_0
.end method
