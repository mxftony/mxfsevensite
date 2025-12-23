Scurt ghid SEO & pasii urmatori

1) Sitemap si robots
- `sitemap.xml` este la root; `robots.txt` refera sitemap-ul. Verifica domeniul: https://mxfseven.com/sitemap.xml
- Trimite sitemap-ul in Google Search Console si Bing Webmaster Tools.

2) Meta tags recomandate (adauga in head pentru fiecare pagina):
- `<title>` unic per pagina (50-60 caractere recomandat)
- `<meta name="description" content="...">` (120-160 caractere)
- Canonical: `<link rel="canonical" href="https://mxfseven.com/page.html" />`
- Open Graph: `og:title`, `og:description`, `og:image`, `og:url`
- Twitter Card: `twitter:card`, `twitter:title`, `twitter:description`, `twitter:image`

3) Structura si date structurate
- Adauga JSON-LD Organization si LocalBusiness (nume, adresa, telefon, email, openingHours).

4) Imagini si performanta
- Optimizeaza imagini (WebP sau comprimare), adauga `alt` descriptiv fara diacritice daca vrei.
- Minify CSS/JS si activeaza caching la server.

5) Mobil si viteza
- Verifica cu Google PageSpeed Insights si Core Web Vitals.
- Evita iframes mari care incetinesc pagina; lazy-load pentru imagini.

6) Link building si continut
- Publica articole/tipuri (blog) cu continut original si cuvinte cheie relevante.
- Adauga Sitemap actualizat cand adaugi pagini noi.

7) Verificari finale
- Foloseste Search Console pentru erori de indexare si pagini excluse.
- Ruleaza un grep pentru a te asigura ca paginile au tag-uri meta si `title` unice.

Doresti sa adaug eu meta tags (title/description/OG/JSON-LD) automat in toate fisierele HTML? Raspunde cu "da" si le adaug.

---

Optimizare imagini (WebP si responsive)
- Pentru viteza recomand conversia imaginilor in WebP si generarea de dimensiuni 1920/1280/800.
- Am adaugat doua scripturi in proiect: `convert_images.ps1` (Windows) si `convert_images.sh` (Unix) in root; ruleaza-le dupa instalarea `ImageMagick` si `cwebp`:

PowerShell (Windows):
```powershell
.\convert_images.ps1
```

Bash (Linux/macOS):
```bash
./convert_images.sh
```

Modificarile HTML:
- Am actualizat `index.html` ca sa foloseasca un element `<picture>` pentru `img/bannermxf` si am adaugat `loading="lazy"` pentru imagini.

Structured Data suplimentar
- Am adaugat `BreadcrumbList`, `FAQPage` si doua `Review` in `index.html` folosind textul din recenzii existente.

Submit sitemap
- Deschide Google Search Console → Adauga proprietatea `https://mxfseven.com` → Sitemap → adauga `sitemap.xml`.
- Pentru Bing: Bing Webmaster Tools -> Add site -> Submit sitemap.

Vrei sa adaug eu automat tag-uri si JSON-LD pentru restul fisierelor (FAQ per pagina, reviews, breadcrumb unificate)?