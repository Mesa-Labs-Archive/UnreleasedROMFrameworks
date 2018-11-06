.class Lcom/android/server/wifi/LogcatLog$RealLogMessage;
.super Ljava/lang/Object;
.source "LogcatLog.java"

# interfaces
.implements Lcom/android/server/wifi/WifiLog$LogMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/LogcatLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealLogMessage"
.end annotation


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mLogLevel:I

.field private mNextFormatCharPos:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mLogLevel:I

    iput-object p2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    return-void
.end method

.method private copyUntilPlaceholder()V
    .locals 4

    iget v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    const/16 v2, 0x25

    iget v3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    return-void
.end method


# virtual methods
.method public c(C)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(J)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->copyUntilPlaceholder()V

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    :cond_0
    return-object p0
.end method

.method public flush()V
    .locals 4

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mNextFormatCharPos:I

    iget-object v3, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mFormat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/android/server/wifi/LogcatLog;->-get0()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mLogLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mLogLevel:I

    iget-object v1, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public r(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->c(Ljava/lang/String;)Lcom/android/server/wifi/WifiLog$LogMessage;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/LogcatLog$RealLogMessage;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
