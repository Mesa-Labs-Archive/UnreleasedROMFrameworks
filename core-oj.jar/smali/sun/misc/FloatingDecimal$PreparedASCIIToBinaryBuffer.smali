.class Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreparedASCIIToBinaryBuffer"
.end annotation


# instance fields
.field private final doubleVal:D

.field private final floatVal:F


# direct methods
.method public constructor <init>(DF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    iput p3, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    iget-wide v0, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->doubleVal:D

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Lsun/misc/FloatingDecimal$PreparedASCIIToBinaryBuffer;->floatVal:F

    return v0
.end method
