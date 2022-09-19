Feature: Android Split

    Scenario: Popup Metode Split
        Given user berada di homepage "Split-01"
        And user pilih produk "Split-01"
        When user pilih split "Split-01"
        Then system menampilkan pop up metode split "Split-01"

    Scenario: Halaman Split Pembayaran
        Given user berada di homepage "Split-02"
        And user pilih produk "Split-02"
        When user pilih split pembayaran "Split-02"
        Then system menampilkan halaman split pembayaran "Split-02"

    Scenario: Halaman Split Bill
        Given user berada di homepage "Split-03"
        And user pilih produk "Split-03"
        When user pilih split bill "Split-03"
        Then system menampilkan halaman split bill dan terdapat icon diskon "Split-03"

    Scenario: Maksimal Metode Pembayaran 5 Row
        Given user berada di homepage "Split-04"
        And user pilih produk "Split-04"
        And user pilih split pembayaran "Split-04"
        When user tambah metode pembayaran "Split-04"
        Then system menampilkan maksimal metode pembayaran 5 row "Split-04"
        
    Scenario: Metode Pembayaran
        Given user berada di homepage "Split-05"
        And user pilih produk "Split-05"
        And user pilih split pembayaran "Split-05"
        When user pilih opsi metode pembayaran Split-05"
        Then system menampilkan semua custom payment termasuk tunai dan kartu "Split-05"

    Scenario: Menghapus Row Yang Baru ditambahkan
        Given user berada di homepage "Split-06"
        And user pilih produk "Split-06"
        And user pilih split pembayaran "Split-06"
        And user tambah metode pembayaran sampai 5 row "Split-06"
        When user pilih hapus "Split-06"
        Then system menghapus semua row yang baru ditambahkan "Split-06"

    
    Scenario: Generate Otomatis Total Pembayaran 
        Given user berada di homepage "Split-07"
        And user pilih produk "Split-07"
        And user pilih split pembayaran "Split-07"
        And user tambah metode pembayaran sampai 5 row "Split-07"
        When user hapus 1 angka di row pertama "Split-07"
        Then system generate otomatis untuk total pembayarannya per metode pembayaran "Split-07"

    Scenario: Generate Otomatis Total Pembayaran Row 4
        Given user berada di homepage "Split-08"
        And user pilih produk "Split-08"
        And user pilih split pembayaran "Split-08"
        And user tambah metode pembayaran sampai 5 row "Split-08"
        And user bayar 3 metode pembayaran "Split-08"
        When user pilih hapus "Split-08"
        Then system generate otomatis untuk sisa pembayarannya di row 4 "Split-08"
    
    Scenario: Berhasil Bayar Transaksi
        Given user berada di homepage "Split-09"
        And user pilih produk "Split-09"
        And user pilih split pembayaran "Split-09"
        And user tambah metode pembayaran sampai 5 row "Split-09"
        When user bayar semua metode pembayaran "Split-09"
        Then transaksi berhasil di bayar "Split-09"

    Scenario: Halaman Split Bill Lewat Operator Tanpa Akses Diskon
        Given user berada di homepage "Split-10"
        And user pilih produk "Split-10"
        When user pilih split bill "Split-10"
        Then system menampilkan halaman split bill dan terdapat icon diskon "Split-10"

    Scenario: Simpan Split Bill
        Given user berada di homepage "Split-11"
        And user pilih produk "Split-11"
        And user pilih split bill "Split-11"
        When user simpan "Split-11"
        Then transaksi berhasil disimpan "Split-11"

    Scenario: Simpan Split Bill Dengan Produk Yang Belum Dibayarkan
        Given user berada di homepage "Split-12"
        And user pilih produk "Split-12"
        And user pilih split bill "Split-12"
        And user pindahkan beberapa item dan bayar "Split-12"
        When user simpan "Split-12"
        Then transaksi berhasil disimpan dengan produk yang belum dibayarkan "Split-12"

    Scenario: Simpan Split Bill Dengan Diskon Dan Produk Yang Belum Dibayarkan
        Given user berada di homepage "Split-13"
        And user pilih produk "Split-13"
        And user pilih split bill "Split-13"
        When user masukan diskon manual transaksi atau diskon khusus "Split-13"
        And user pindahkan beberapa item dan bayar "Split-13"
        And user simpan "Split-13"
        Then transaksi berhasil disimpan dengan diskon dan produk yang belum dibayarkan "Split-13"