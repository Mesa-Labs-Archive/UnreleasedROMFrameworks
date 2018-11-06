.class final Ljava/util/logging/Logger$LoggerBundle;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoggerBundle"
.end annotation


# instance fields
.field final resourceBundleName:Ljava/lang/String;

.field final userBundle:Ljava/util/ResourceBundle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    iput-object p2, p0, Ljava/util/logging/Logger$LoggerBundle;->userBundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/logging/Logger$LoggerBundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static get(Ljava/lang/String;Ljava/util/ResourceBundle;)Ljava/util/logging/Logger$LoggerBundle;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/logging/Logger;->-get0()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "sun.util.logging.resources.logging"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/util/logging/Logger;->-get1()Ljava/util/logging/Logger$LoggerBundle;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/logging/Logger$LoggerBundle;

    invoke-direct {v0, p0, p1}, Ljava/util/logging/Logger$LoggerBundle;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;)V

    return-object v0
.end method


# virtual methods
.method isSystemBundle()Z
    .locals 2

    const-string/jumbo v0, "sun.util.logging.resources.logging"

    iget-object v1, p0, Ljava/util/logging/Logger$LoggerBundle;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
