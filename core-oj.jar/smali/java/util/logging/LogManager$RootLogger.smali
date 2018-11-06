.class final Ljava/util/logging/LogManager$RootLogger;
.super Ljava/util/logging/Logger;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootLogger"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .locals 6

    const/4 v2, 0x0

    iput-object p1, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    const-string/jumbo v1, ""

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method


# virtual methods
.method accessCheckedHandlers()[Ljava/util/logging/Handler;
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0}, Ljava/util/logging/Logger;->accessCheckedHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    return-object v0
.end method

.method public addHandler(Ljava/util/logging/Handler;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-void
.end method

.method public log(Ljava/util/logging/LogRecord;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method public removeHandler(Ljava/util/logging/Handler;)V
    .locals 1

    iget-object v0, p0, Ljava/util/logging/LogManager$RootLogger;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-wrap4(Ljava/util/logging/LogManager;)V

    invoke-super {p0, p1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    return-void
.end method
