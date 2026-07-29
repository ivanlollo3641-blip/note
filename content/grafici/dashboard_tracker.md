# 📊 La mia Dashboard

Ecco le statistiche basate sulle tue note giornaliere presenti nella cartella "Diari".

## 🚶‍♂️ Andamento Passi

Questo grafico a linee mostra come variano i tuoi passi nel tempo.

```tracker
searchType: frontmatter
searchTarget: passi_giornalieri
folder: Diari
line:
    title: Passi Giornalieri
    yAxisLabel: Numero di passi
    lineColor: '#28af73'
```

---

## 😴 Correlazione Sonno e Umore

Questo grafico unisce due valori per aiutarti a capire se la quantità di sonno influenza il tuo umore.

```tracker
searchType: frontmatter
searchTarget: ore_sonno, umore
folder: Diari
datasetName: Ore di sonno, Livello Umore
line:
    title: Impatto del sonno sull'umore
    yAxisLabel: Valori
    lineColor: '#4287f5, #f5d142'
    showLegend: true
```

---

## 📚 Pagine Lette

Un grafico a barre per visualizzare il volume di lettura quotidiano.

```tracker
searchType: frontmatter
searchTarget: pagine_lette
folder: Diari
bar:
    title: Pagine Lette al Giorno
    yAxisLabel: Pagine
    barColor: '#d65d1e'
```

---

## 📈 Sommari Rapidi

**Totale Pagine Lette:**

```tracker
searchType: frontmatter
searchTarget: pagine_lette
folder: Diari
summary:
    template: "Hai letto un totale di {{sum()}} pagine."
```

**Media Ore di Sonno:**

```tracker
searchType: frontmatter
searchTarget: ore_sonno
folder: Diari
summary:
    template: "Dormi in media {{average()}} ore a notte."
```
