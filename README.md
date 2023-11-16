# Anime88 | Manual Book

Anime88 merupkan website dimana para pengguna dapat memberi nilai dan ulasan terhadap Anime-anime favorit mereka.
Website ini memiliki 2 Role, Admin dan User.

## Landing Page

Saat Memasuki Website Anime88, Pengguna akan memasuki Landing Page dari website

![Landing Page](docs/images/landing_page.png)

Di landing page, Pengguna yang belum melakukan Login/register akan memiliki status "Guest".
Login/Register dapat dilakukan dengan meng-click tombol Login/Register di Navbar, pojok kanan atas.
Pengguna dapat Login sebagai Admin atau user dan hanya dapat Register sebagai User.

## Admin

Admin didalam website ini memiliki role sebagai orang yang memanage data anime, Admin dapat Menambahkan, Membaca, Mengubah dan Menghapus data anime.

### Login Sebagai Admin

Admin dapat melakukan Login dengan menginputkan Username "admin" dengan Password "admin".
Didalam Website kami hanya memiliki satu admin, Jika ingin menambahkan admin baru, tidak bisa melalui websitenya secara langsung,
bila ingin menambahkan admin baru harus menghubungi operator website untuk menambahkan admin baru.

![Login Form](docs/images/login_form.png)

Setelah memasukkan Username dan Password admin yang benar, Click Login lalu anda akan termasuk Akun admin

### Admin Landing Page

Admin akan memiliki landing page seperti berikut

![Admin Landing Page](docs/images/login_admin_landing_page.png)

Klik pada username/icon `⌄` disamping nama admin, maka akan tampil dua pilihan yang dapat dipilih admin

<p align="center">
    <img src="docs/images/admin_dropdown.png" />
</p>

### -Admin Log out

Salah satu menu yang dapat dipilih oleh Admin yaitu Log out, Dimana admin dapat melakukan log out dari akun admin menjadi "Guest", Akan diarahkan kembali ke menu login

![image](https://github.com/Veirt/anime88/assets/119658224/76d0aea4-fa66-47e0-a06a-5ab32f9e41d7)

### -Admin Dashboard Menu

Menu lainnya yang dapat admin click yaitu "Dashboard" dimana setelah meng-click "Dashboard" Admin Akan Ditujukan ke halaman dashboard admin.

![image](https://github.com/Veirt/anime88/assets/119658224/e5a3f26a-bf3d-4837-b8ea-fdf857b65125)

Dalam Menu Dashboard, ditampilkan beberapa data yaitu, "Total Users" yang menunjukkan jumlah user yang telah terdaftar didalam website ini,
"Total Anime" yang menunjukkan Jumlah Anime/Data Anime yang ada didalam website ini, "Total Reviews" dimana menunjukkan total reviews yang telah dilakukan oleh seluruh users yang telah terdaftar,
dan terakhir ada "Random Anime" dimana data anime (title) yang ada akan di pilih secara random dan akan ditampilkan disini

![image](https://github.com/Veirt/anime88/assets/119658224/e98fdd51-fe9c-47eb-afa1-075c314b26e9)

Di bagian kiri Dashboard terdapat Sidebar menu yang menampilkan Page Dashboard apa yang sedang di akses dan yang dapat di akses oleh admin,
Terdapat Menu "Dasboard" (Halaman Sekarang), Menu Create, Menu "Read" dan Menu "Home".

<p align="center">
<img src=https://github.com/Veirt/anime88/assets/119658224/f622875b-3f1e-4dd1-ba3f-833617936520 />
</p>

Masing-masing menu dapat di click dan akan menuju ke halaman mereka.

### -Admin Create Menu

Didalam menu "Create", Admin dapat melakukan penambahan data anime dengan memasukkan data-data kedalam form Create Anime.

![image](https://github.com/Veirt/anime88/assets/119658224/cdc34ec3-9986-4e94-a514-3c23701024a8)


Admin Dapat Menambahkan Nama Anime, Sinopsis anime, Jumlah Episode, Genre Anime (Admin dapat memilih genre dengan menekan genre yang ingin dimasukkan),
Status anime, Season anime, Tahun Anime, Studio anime dan Poster anime.

### -Admin Read Menu

Menu "Read" merupakan menu dimana Admin dapat melihat seluruh Anime yang telah di tambahkan.

![image](https://github.com/Veirt/anime88/assets/119658224/3b3f5ed2-4ab5-4908-9c35-a9e3e41960d2)


Didalam menu "Read" ini admin juga dapat melakukan Searching terhadap anime yang ada di dalam search bar yang tersedia,
Admin juga dapat mem-filter berdasarkan Season dan Tahun rilis anime tersebut.

![image](https://github.com/Veirt/anime88/assets/119658224/d0aa14b7-6443-4748-84d5-24be31e6c971)


Dengan Memilih Season atau Memasukkan Tahun kedalam Kolom "Tahun".

### -Admin Read Detail Anime

Admin dapat meng-click Poster Anime dan akan menunjukkan mereka ke halaman detail anime tersebut.

![image](https://github.com/Veirt/anime88/assets/119658224/bd292185-8583-4bc4-97e0-999b08e61e94)


Disini Admin dapat melihat seluruh data anime yang telah di "Create" serta informasi lainnya seperti,
"Score", "Ranking", Jumlah User yang me-rank dan me-review anime tersebut.

### -Admin Update Menu

Untuk Melakukan Update terhadap data anime, Admin dapat meng-click tombol "Update" yang ada di halaman Detail anime,
Tombol Berada di bagian "Actions" yang terletak di bagian kiri halaman.

![image](https://github.com/Veirt/anime88/assets/119658224/52b5984d-af84-4bcd-843b-30dac3dcca03)


Setelah meng-click tombol "Update" maka akan di arahkan ke halaman Update anime yang dimana admin dapat merubah data anime tersebut,
Akan ditampilkan data anime sebelum di update.
Setelah Selesai Mengupdate, Admin dapat meng-click tombol "Update" untuk mengupdate data anime tersebut.

### -Anime Delete Button

Untuk menghapus data anime, Admin dapat Meng-click tombol "Delete" yang berada di sebelah tombol "Update".

![image](https://github.com/Veirt/anime88/assets/119658224/3b3139aa-9d15-431b-9a45-db6778695f4d)


Akan ada Konfirmasi setelah meng-click tombol "Delete", Admin dapat menekan "Cancel" jika ingin membatalkan penghapusan dan "Ok" Jika ingin lanjut menghapus data

![image](https://github.com/Veirt/anime88/assets/119658224/0199594d-fe89-4048-a5e9-83479ae8449e)


Jika Admin memilih "Ok" maka data anime akan terhapus dan akan muncul alert seperti berikut.

![image](https://github.com/Veirt/anime88/assets/119658224/c8dec475-1041-48cc-8f8f-531a2395b072)


### -Home Button

Terdapat Menu "Home" pada sidebar dashboard yang bila di click akan mengembalikan admin ke halaman utama website

![image](https://github.com/Veirt/anime88/assets/119658224/4427e160-b039-4ace-99c2-e07dce80b159)


## User

User atau Pengguna pada website ini memiliki role sebagai User yang dapat Melihat Anime beserta detailnya, Memberi Rating dan Review terhadap anime yang ingin mereka rate/review.

### -Login User

User dapat melakukan login jika sudah memiliki akun, Setelah memasukkan Username dan Password, click submit untuk melakukan Login.

![image](https://github.com/Veirt/anime88/assets/119658224/ec4a5032-cbca-496a-a541-3c1ec4153ac4)

Setelah itu maka user akan masuk sebagai user yang terdaftar dan dapat dilihat di pojok kanan atas/navbar

<p align="center">
<img src=https://github.com/Veirt/anime88/assets/119658224/6e2b490d-4190-4c6c-b159-ff7cd8d8fec7 />
</p>

### -Registrasi User

Jika pengguna belum mendaftarkan akun di wabsite Anime88, Pengguna dapat melakukan Registrasi Akun dengan meng-click tombol "Registrasi" di sebelah tombol "login".

![image](https://github.com/Veirt/anime88/assets/119658224/cdb4557d-25ab-4ba0-9161-4a279b9c176d)


Setelah meng-click tombol "Registrasi", akan tampil form Registrasi untuk pengguna mendaftarkan akun mereka.
Masukkan Username, Password dan confirm Passowrd nya lalu click "Register"

![image](https://github.com/Veirt/anime88/assets/119658224/317dba45-0957-4627-9fac-16d8314d875e)


Setelah Register maka akan di arahkan ke form login untuk melakukan login dengan akun yang baru didaftarkan.

![image](https://github.com/Veirt/anime88/assets/119658224/075ce301-29a7-45e7-9546-27a7f5f73b88)


Setelah login maka akun telah terbuat dan pengguna akan login sebagai akun yang telah didaftarkan.

### -User Landing Page

User akan memiliki landing page sebagai berikut.

![image](https://github.com/Veirt/anime88/assets/119658224/96b942f6-eb03-487c-8027-8b283767b0c6)


Click menu dropdown ![image](https://github.com/Veirt/anime88/assets/119658224/b4bc1c31-835c-45a6-8c6c-60861074aca8) disamping nama user, maka akan tampil dua pilihan yang dapat dipilih user

<p align="center">
<img src=https://github.com/Veirt/anime88/assets/119658224/6d25883d-8dde-406e-8a67-a2031a09d692 />
</p>

Selain itu, Di landing page terdapat Konten yang lain seperti,

![image](https://github.com/Veirt/anime88/assets/119658224/d08d0d8e-9243-431a-845e-24cf24e36806)

Search bar, dimana user dapat melakukan Searching, searching juga dapat di filter berdasarkan season dan tahun rilis.

![image](https://github.com/Veirt/anime88/assets/119658224/b523af12-4ec8-4b08-aa59-4bde82499b87)

View beberapa genre yang ada di anime.

![image](https://github.com/Veirt/anime88/assets/119658224/e7dfaa68-d030-4f31-9bea-f2644a906acc)

Section Quotes yang akan menampilkan quotes-quotes secara random setiap page di refresh

![image](https://github.com/Veirt/anime88/assets/119658224/d4b9b812-4b71-4040-9ac4-8b67b2a413c7)

Section "Top Anime" menampilkan 4 Top anime (anime yang paling tinggi ratingnya), dan tombol "View All" menuju page Anime yang di sort ratingnya secara descending.

![image](https://github.com/Veirt/anime88/assets/119658224/4a3e4184-006d-46a4-b629-27b61c151c13)

Section "Seaosonal Anime" menampilkan 4 Seasonal anime (anime yang sedang tayang/airing), dan tombol "View All" menuju page Anime yang akan menampilkan seluruh anime yang sedang airing.

<p align="center">
<img src=https://github.com/Veirt/anime88/assets/119658224/76adc036-e282-4bcf-84f7-d6d8262ef4ec />
</p>

Terdapat tombol dark-mode/light-mode yang dapat di akses di page manapun di ujung kanan bawah page.

### -User Log out

Sama seperti Admin, Salah satu menu yang dapat dipilih oleh User yaitu Log out, Dimana user dapat melakukan log out dari akun User menjadi "Guest", Akan diarahkan kembali ke menu login.

### -User Melihat Detail Anime

User dapat melihat detail anime dengan cara meng-click poster anime atau title animenya

![image](https://github.com/Veirt/anime88/assets/119658224/5fee916a-5e19-4eac-8e2a-03ab688e84db)

Maka akan tampil detail anime tersebut.

### -User Rating & Review Anime

User dapat melakukan rating terhadap anime dengan cara memasuki halaman detail anime yang inging di rating,
Lalu meng-click tombol "Add Review"

![image](https://github.com/Veirt/anime88/assets/119658224/abba4589-16b7-455e-b813-145e4b7507d3)

Setelah itu akan tampil form untuk melakukan rating & dan review seperti berikut.

![image](https://github.com/Veirt/anime88/assets/119658224/3290915f-8d5e-4c19-9de0-3615d2290c25)

Setelah selesai, click submit untuk mengsubmit review & rating.
User juga dapat mengosongkan review bila tidak ingin memberikan ulasan terhadap anime,
Namun user tidak bisa mengosongkan bagian "Rating" dan hanya mengisi review.

![image](https://github.com/Veirt/anime88/assets/119658224/36d997d6-6b8e-45e1-822f-6082c691f839)

### -User Profile

Menu lain yang ada di Menu dropdown selain Log out yaitu Profile.
User dapat melihat profile mereka dengan meng-click tombol "Profile"

![image](https://github.com/Veirt/anime88/assets/119658224/11de23b6-2f63-42e1-8035-656c64a40b80)

Halaman Profile akan berisi beberapa informasi tentang user seperti
Username, Total Anime Rated dan Rata-rata/mean score anime.
Dan juga anime yang telah di Rate & Review oleh user tersebut.

![image](https://github.com/Veirt/anime88/assets/119658224/8c6260ce-e889-4216-a3ba-795a4d795742)

## Guest Mode

Guest Mode adalah state dimana Pengguna Admin maupun User belum melakukan Login.

Untuk Tampilan dalam mode guest sama seperti user biasa, namun dilimitasi dengan hanya bisa melihat landing page,
melakukan searching, dan melihat detail anime.

pengguna dengan Guest Mode tidak dapat melakukan review & rating dan tidak memiliki profile
