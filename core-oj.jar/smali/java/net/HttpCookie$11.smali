.class final Ljava/net/HttpCookie$11;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/net/HttpCookie$CookieAttributeAssignor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/HttpCookie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-wide/16 v8, -0x1

    invoke-virtual {p1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    invoke-static {p3}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {p1}, Ljava/net/HttpCookie;->-get0(Ljava/net/HttpCookie;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    :cond_1
    return-void
.end method
