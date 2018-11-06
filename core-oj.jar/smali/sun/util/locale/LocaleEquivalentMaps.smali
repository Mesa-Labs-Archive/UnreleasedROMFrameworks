.class final Lsun/util/locale/LocaleEquivalentMaps;
.super Ljava/lang/Object;
.source "LocaleEquivalentMaps.java"


# static fields
.field static final multiEquivsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final regionVariantEquivMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final singleEquivMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "acn"

    const-string/jumbo v2, "xia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "adx"

    const-string/jumbo v2, "pcr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ami"

    const-string/jumbo v2, "i-ami"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "art-lojban"

    const-string/jumbo v2, "jbo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ase"

    const-string/jumbo v2, "sgn-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ayx"

    const-string/jumbo v2, "nun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "bfi"

    const-string/jumbo v2, "sgn-gb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "bjd"

    const-string/jumbo v2, "drl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "bnn"

    const-string/jumbo v2, "i-bnn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "bzs"

    const-string/jumbo v2, "sgn-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cir"

    const-string/jumbo v2, "meg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cjr"

    const-string/jumbo v2, "mom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cka"

    const-string/jumbo v2, "cmr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cmk"

    const-string/jumbo v2, "xch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cmn-hans"

    const-string/jumbo v2, "zh-cmn-hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cmn-hant"

    const-string/jumbo v2, "zh-cmn-hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "cmr"

    const-string/jumbo v2, "cka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "csn"

    const-string/jumbo v2, "sgn-co"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "dev"

    const-string/jumbo v2, "gav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "drh"

    const-string/jumbo v2, "khk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "drl"

    const-string/jumbo v2, "bjd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "dse"

    const-string/jumbo v2, "sgn-nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "dsl"

    const-string/jumbo v2, "sgn-dk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "fsl"

    const-string/jumbo v2, "sgn-fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "gal"

    const-string/jumbo v2, "ilw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "gan"

    const-string/jumbo v2, "zh-gan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "gav"

    const-string/jumbo v2, "dev"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "gsg"

    const-string/jumbo v2, "sgn-de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "gss"

    const-string/jumbo v2, "sgn-gr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "he"

    const-string/jumbo v2, "iw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "hle"

    const-string/jumbo v2, "sca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "hrr"

    const-string/jumbo v2, "jal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "hsn"

    const-string/jumbo v2, "zh-xiang"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-ami"

    const-string/jumbo v2, "ami"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-bnn"

    const-string/jumbo v2, "bnn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-klingon"

    const-string/jumbo v2, "tlh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-lux"

    const-string/jumbo v2, "lb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-navajo"

    const-string/jumbo v2, "nv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-pwn"

    const-string/jumbo v2, "pwn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-tao"

    const-string/jumbo v2, "tao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-tay"

    const-string/jumbo v2, "tay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "i-tsu"

    const-string/jumbo v2, "tsu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ibi"

    const-string/jumbo v2, "opa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ilw"

    const-string/jumbo v2, "gal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "in"

    const-string/jumbo v2, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ise"

    const-string/jumbo v2, "sgn-it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "isg"

    const-string/jumbo v2, "sgn-ie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "iw"

    const-string/jumbo v2, "he"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "jal"

    const-string/jumbo v2, "hrr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "jbo"

    const-string/jumbo v2, "art-lojban"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ji"

    const-string/jumbo v2, "yi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "jsl"

    const-string/jumbo v2, "sgn-jp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "jv"

    const-string/jumbo v2, "jw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "jw"

    const-string/jumbo v2, "jv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "kgh"

    const-string/jumbo v2, "kml"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "khk"

    const-string/jumbo v2, "drh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "kml"

    const-string/jumbo v2, "kgh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "lb"

    const-string/jumbo v2, "i-lux"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "lcq"

    const-string/jumbo v2, "ppr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "lrr"

    const-string/jumbo v2, "yma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "meg"

    const-string/jumbo v2, "cir"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "mfs"

    const-string/jumbo v2, "sgn-mx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "mo"

    const-string/jumbo v2, "ro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "mom"

    const-string/jumbo v2, "cjr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nan"

    const-string/jumbo v2, "zh-min-nan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nb"

    const-string/jumbo v2, "no-bok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ncs"

    const-string/jumbo v2, "sgn-ni"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nn"

    const-string/jumbo v2, "no-nyn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "no-bok"

    const-string/jumbo v2, "nb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "no-nyn"

    const-string/jumbo v2, "nn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nsl"

    const-string/jumbo v2, "sgn-no"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nun"

    const-string/jumbo v2, "ayx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "nv"

    const-string/jumbo v2, "i-navajo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "opa"

    const-string/jumbo v2, "ibi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "pcr"

    const-string/jumbo v2, "adx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ppr"

    const-string/jumbo v2, "lcq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "psr"

    const-string/jumbo v2, "sgn-pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "pwn"

    const-string/jumbo v2, "i-pwn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ras"

    const-string/jumbo v2, "tie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ro"

    const-string/jumbo v2, "mo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sca"

    const-string/jumbo v2, "hle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sfb"

    const-string/jumbo v2, "sgn-be-fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sfs"

    const-string/jumbo v2, "sgn-za"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgg"

    const-string/jumbo v2, "sgn-ch-de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-be-fr"

    const-string/jumbo v2, "sfb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-be-nl"

    const-string/jumbo v2, "vgt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-br"

    const-string/jumbo v2, "bzs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-ch-de"

    const-string/jumbo v2, "sgg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-co"

    const-string/jumbo v2, "csn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-de"

    const-string/jumbo v2, "gsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-dk"

    const-string/jumbo v2, "dsl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-es"

    const-string/jumbo v2, "ssp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-fr"

    const-string/jumbo v2, "fsl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-gb"

    const-string/jumbo v2, "bfi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-gr"

    const-string/jumbo v2, "gss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-ie"

    const-string/jumbo v2, "isg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-it"

    const-string/jumbo v2, "ise"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-jp"

    const-string/jumbo v2, "jsl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-mx"

    const-string/jumbo v2, "mfs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-ni"

    const-string/jumbo v2, "ncs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-nl"

    const-string/jumbo v2, "dse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-no"

    const-string/jumbo v2, "nsl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-pt"

    const-string/jumbo v2, "psr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-se"

    const-string/jumbo v2, "swl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-us"

    const-string/jumbo v2, "ase"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "sgn-za"

    const-string/jumbo v2, "sfs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "ssp"

    const-string/jumbo v2, "sgn-es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "swl"

    const-string/jumbo v2, "sgn-se"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tao"

    const-string/jumbo v2, "i-tao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tay"

    const-string/jumbo v2, "i-tay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tie"

    const-string/jumbo v2, "ras"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tkk"

    const-string/jumbo v2, "twm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tlh"

    const-string/jumbo v2, "i-klingon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tlw"

    const-string/jumbo v2, "weo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "tsu"

    const-string/jumbo v2, "i-tsu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "twm"

    const-string/jumbo v2, "tkk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "vgt"

    const-string/jumbo v2, "sgn-be-nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "weo"

    const-string/jumbo v2, "tlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "wuu"

    const-string/jumbo v2, "zh-wuu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "xch"

    const-string/jumbo v2, "cmk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "xia"

    const-string/jumbo v2, "acn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "yi"

    const-string/jumbo v2, "ji"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "yma"

    const-string/jumbo v2, "lrr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "yos"

    const-string/jumbo v2, "zom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "yue"

    const-string/jumbo v2, "zh-yue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-cmn-hans"

    const-string/jumbo v2, "cmn-hans"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-cmn-hant"

    const-string/jumbo v2, "cmn-hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-gan"

    const-string/jumbo v2, "gan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-min-nan"

    const-string/jumbo v2, "nan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-wuu"

    const-string/jumbo v2, "wuu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-xiang"

    const-string/jumbo v2, "hsn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-yue"

    const-string/jumbo v2, "yue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "zom"

    const-string/jumbo v2, "yos"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "ccq"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rki"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ybd"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "cmn"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zh-guoyu"

    aput-object v3, v2, v4

    const-string/jumbo v3, "zh-cmn"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "drw"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prs"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tnf"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "hak"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "i-hak"

    aput-object v3, v2, v4

    const-string/jumbo v3, "zh-hakka"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "i-hak"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hak"

    aput-object v3, v2, v4

    const-string/jumbo v3, "zh-hakka"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "mry"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mst"

    aput-object v3, v2, v4

    const-string/jumbo v3, "myt"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "mst"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "myt"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "myt"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mry"

    aput-object v3, v2, v4

    const-string/jumbo v3, "mst"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "prs"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "drw"

    aput-object v3, v2, v4

    const-string/jumbo v3, "tnf"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "rki"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ccq"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ybd"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "tnf"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prs"

    aput-object v3, v2, v4

    const-string/jumbo v3, "drw"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "ybd"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rki"

    aput-object v3, v2, v4

    const-string/jumbo v3, "ccq"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-cmn"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmn"

    aput-object v3, v2, v4

    const-string/jumbo v3, "zh-guoyu"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-guoyu"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cmn"

    aput-object v3, v2, v4

    const-string/jumbo v3, "zh-cmn"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    const-string/jumbo v1, "zh-hakka"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hak"

    aput-object v3, v2, v4

    const-string/jumbo v3, "i-hak"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-alalc97"

    const-string/jumbo v2, "-heploc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-bu"

    const-string/jumbo v2, "-mm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-cd"

    const-string/jumbo v2, "-zr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-dd"

    const-string/jumbo v2, "-de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-de"

    const-string/jumbo v2, "-dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-fr"

    const-string/jumbo v2, "-fx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-fx"

    const-string/jumbo v2, "-fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-heploc"

    const-string/jumbo v2, "-alalc97"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-mm"

    const-string/jumbo v2, "-bu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-tl"

    const-string/jumbo v2, "-tp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-tp"

    const-string/jumbo v2, "-tl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-yd"

    const-string/jumbo v2, "-ye"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-ye"

    const-string/jumbo v2, "-yd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    const-string/jumbo v1, "-zr"

    const-string/jumbo v2, "-cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
