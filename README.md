# Webservices Poliklinik Mangusada
## Latihan Pemrograman Webservices

> **Disclaimer:**
>
> Webservices ini dibuat untuk keperluan pembelajaran. Data yang disediakan merupakan data fiktif. Mohon digunakan secara bijak.

*Live version* dapat diakses di [BakPasir](https://mangusada.bakpasir.web.id).

---

## Konstruksi Umum

Semua request service dilakukan melalui

```
{BASE_URL} : http://mangusada.bakpasir.web.id/
```

Method yang digunakan adalah `GET` atau `POST` tergantung jenis request.

Response service adalah data dalam format JSON, berupa JSON object dengan property pertama adalah `status`. Property `status` menunjukkan status berhasil atau tidaknya request mendapatkan data. Jika berhasil mendapatkan data, maka `status` akan bernilai `1` diikuti dengan property `data` yang berisi data hasil request. Namun jika gagal, maka `status` akan bernilai `0`.

**Response berhasil**

```
{"status":1, "data": ... }
```

**Response gagal**

```
{"status":0}
```

---

## Informasi Daftar Dokter

```
Method       : GET
URL          : {BASE_URL}/dokter/{id_poliklinik}
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/dokter/2
```

**Hasil:**

```
{"status":1, "data":[{"id":"5", "nama":"dr. Budiman", ... }, ... ]}
```

---

## Informasi Jadwal Dokter

```
Method       : GET
URL          : {BASE_URL}/jadwal/{id_dokter}
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/jadwal/5
```

**Hasil:**

```
{"status":1, "data":[{"id":"6", "id_dokter":"5", "hari":"2", "mulai":"17:00:00", ... }, ... ]}
```

---

## Informasi Daftar Jaminan

```
Method       : GET
URL          : {BASE_URL}/jaminan
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/jaminan
```

**Hasil:**

```
{"status":1, "data":[{"id":"4", "nama":"BPJS", ... }, ... ]}
```

---

## Informasi Data Pasien

```
Method       : GET
URL          : {BASE_URL}/pasien/{no_rekam_medis}
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/pasien/510303200000023
```

**Hasil:**

```
{"status":1, "data":{"id":"7", "rm":"510303200000023", "nik":"5102044311820002", "nama":"Ni Nyoman Mariawati", ... }}
```

---

## Informasi Daftar Poliklinik

### Semua Poliklinik

```
Method       : GET
URL          : {BASE_URL}/poliklinik
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/poliklinik
```

**Hasil:**

```
{"status":1, "data":[{"id":"4", "nama":"Klinik Anak", "type":"2"}, ... ]}
```

### Poliklinik Menurut Type

```
Method       : GET
URL          : {BASE_URL}/poliklinik/{type}
Content-Type : application/json
```

**Contoh:**

```
http://mangusada.bakpasir.web.id/poliklinik/2
```

**Hasil:**

```
{"status":1, "data":[{"id":"4", "nama":"Klinik Anak", "type":"2"}, ... ]}
```

---

## To Do List:
1. Pendaftaran Pasien (Method: `POST`)
2. Auth pengguna
3. 
