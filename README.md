# 0373-Ra5Pr1-CognomsNom

**Mòdul:** 0373 - Llenguatge de marques  
**Activitat:** RA5Act1 - Exercicis pràctics XPath i XSLT  
**Curs:** 2025/2026  
**Institut:** Institut de Logística de Barcelona

---

## Descripció

Pràctica sobre XPath i XSLT de manera progressiva: selecció de nodes en XML, filtres, ordenació i transformació de documents XML en HTML, text i altres XML.

---

## Estructura del repositori

```
0373-Ra5Pr1-CognomsNom/
├── biblioteca.xml                             ← XML base de referència
├── xpath/
├── xslt/
│   ├── bloc7-nivell1/
│   │   ├── biblioteca.xml                     ← XML enlaçat al XSL del bloc
│   │   └── bloc7-nivell1.xsl
│   ├── bloc8-nivell2/
│   │   ├── biblioteca.xml
│   │   └── bloc8-nivell2.xsl
│   ├── bloc9-nivell3/
│   │   ├── biblioteca.xml
│   │   └── bloc9-nivell3.xsl
│   ├── bloc10-nivell4/
│   │   ├── biblioteca.xml
│   │   └── bloc10-nivell4.xsl
│   ├── bloc11-nivell5/
│   │   ├── biblioteca.xml
│   │   └── bloc11-nivell5.xsl
│   ├── bloc12-nivell6/
│   │   ├── biblioteca.xml
│   │   └── bloc12-nivell6.xsl
│   └── bloc13-nivell7/
│       ├── biblioteca.xml
│       ├── bloc13-ex1-xml-a-xml.xsl
│       ├── bloc13-ex2-text-pla.xsl
│       └── bloc13-ex3-4-5-html-complet.xsl
└── README.md
```

> Cada carpeta XSLT conté el seu propi `biblioteca.xml` amb la processing instruction
> `<?xml-stylesheet?>` apuntant al `.xsl` corresponent. Obrint el XML al navegador
> s'aplica la transformació directament.

---

## Blocs XPath — `xpath/respostes-xpath.md`

| Bloc | Contingut |
|------|-----------|
| Bloc 1 | Selecció bàsica: `biblioteca`, `llibre`, `titol`, `autor`, `revista` |
| Bloc 2 | Atributs i cerca global: `@isbn`, `@estat`, `//titol`, `//*[@estat]` |
| Bloc 3 | Filtres amb predicats: `[@estat='disponible']`, `[preu>12]` |
| Bloc 4 | Posició: `[1]`, `[last()]`, `[position()>1]` |
| Bloc 5 | Consultes riques: combinació de filtres i eixos |
| Bloc 6 | Repte final: operadors `and`, `or`, `|`, `//text()` |

---

## Blocs XSLT

| Bloc | XSL | Contingut |
|------|-----|-----------|
| Bloc 7  | `bloc7-nivell1.xsl`               | Estructura mínima: `xsl:stylesheet`, `match="/"`, HTML bàsic |
| Bloc 8  | `bloc8-nivell2.xsl`               | `xsl:value-of`, accés a atributs i elements concrets |
| Bloc 9  | `bloc9-nivell3.xsl`               | `xsl:for-each`, llistes `ul` i taules `table` |
| Bloc 10 | `bloc10-nivell4.xsl`              | `xsl:if`, `xsl:choose/when/otherwise`, filtres per atribut |
| Bloc 11 | `bloc11-nivell5.xsl`              | `xsl:sort` per any, títol i preu |
| Bloc 12 | `bloc12-nivell6.xsl`              | `xsl:apply-templates`, plantilles per `llibre` i `revista` |
| Bloc 13 | `bloc13-ex1-xml-a-xml.xsl`        | XML → XML: reanomenació d'elements |
| Bloc 13 | `bloc13-ex2-text-pla.xsl`         | Sortida text pla (`method="text"`) |
| Bloc 13 | `bloc13-ex3-4-5-html-complet.xsl` | Classes CSS per estat, `count()`, preu mitjà `sum()/count()` |

---

## Com provar els XSLT

**Opció 1 — Navegador:** Obre el `biblioteca.xml` de la carpeta del bloc. La processing instruction `<?xml-stylesheet?>` aplica el XSL automàticament.

**Opció 2 — Línia de comandes:**
```bash
xsltproc xslt/bloc9-nivell3/bloc9-nivell3.xsl xslt/bloc9-nivell3/biblioteca.xml
```

**Opció 3 — VS Code** amb l'extensió XML de RedHat.
