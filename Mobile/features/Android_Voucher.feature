Feature: Android Voucher

    Scenario: Transaksi Normal Voucher
        Given user berada di homepage "Voucher-01"
        And user pilih pelanggan "Voucher-01"
        And user pilih produk normal "Voucher-01"
        And user redeem voucher "Voucher-01"
        When user bayar uang pas "Voucher-01"
        Then transaksi normal voucher berhasil "Voucher-01"

    Scenario: Transaksi Tunggal Voucher
        Given user berada di homepage "Voucher-02"
        And user pilih pelanggan "Voucher-02"
        And user pilih produk tunggal "Voucher-02"
        And user redeem voucher "Voucher-02"
        When user bayar uang pas "Voucher-02"
        Then transaksi normal voucher berhasil "Voucher-02"

    Scenario: Transaksi Normal Opsi Voucher
        Given user berada di homepage "Voucher-03"
        And user pilih pelanggan "Voucher-03"
        And user pilih produk normal opsi "Voucher-03"
        And user redeem voucher "Voucher-03"
        When user bayar uang pas "Voucher-03"
        Then transaksi normal voucher berhasil "Voucher-03"

    Scenario: Transaksi Variant Voucher
        Given user berada di homepage "Voucher-04"
        And user pilih pelanggan "Voucher-04"
        And user pilih produk variant "Voucher-04"
        And user redeem voucher "Voucher-04"
        When user bayar uang pas "Voucher-04"
        Then transaksi normal voucher berhasil "Voucher-04"

    Scenario: Transaksi Variant Opsi Voucher
        Given user berada di homepage "Voucher-05"
        And user pilih pelanggan "Voucher-05"
        And user pilih produk variant opsi "Voucher-05"
        And user redeem voucher "Voucher-05"
        When user bayar uang pas "Voucher-05"
        Then transaksi normal voucher berhasil "Voucher-05"

    Scenario: Transaksi Semua Jenis Produk Dan Voucher
        Given user berada di homepage "Voucher-06"
        And user pilih pelanggan "Voucher-06"
        And user pilih semua jenis produk "Voucher-06"
        And user redeem voucher "Voucher-06"
        When user bayar uang pas "Voucher-06"
        Then transaksi normal voucher berhasil "Voucher-06"

    Scenario: Transaksi Voucher Tidak Bisa Void
        Given user berada di homepage dan ada transaksi voucher sukses "Voucher-07"
        When user ke riwayat transaksi "Voucher-07"
        Then button void disabled "Voucher-07"

    Scenario: Transaksi Produk Dan Voucher Lebih Dari Subtotal
        Given user berada di homepage "Voucher-08"
        And user pilih pelanggan "Voucher-08"
        And user pilih produk normal "Voucher-08"
        And user redeem voucher 100rb "Voucher-08"
        When user bayar uang pas "Voucher-08"
        Then transaksi normal voucher berhasil "Voucher-08"

    Scenario: Transaksi Produk Dan Voucher Kurang Dari Subtotal
        Given user berada di homepage "Voucher-09"
        And user pilih pelanggan "Voucher-09"
        And user pilih produk normal "Voucher-09"
        And user redeem voucher 100 "Voucher-09"
        When user bayar uang pas "Voucher-09"
        Then transaksi normal voucher berhasil "Voucher-09"

    Scenario: Transaksi Produk Dan Voucher Tidak Bisa Split Bill
        Given user berada di homepage "Voucher-10"
        And user pilih pelanggan "Voucher-10"
        And user pilih produk normal "Voucher-10"
        And user redeem voucher 100 "Voucher-10"
        When user pilih split bill "Voucher-10"
        Then transaksi voucher tidak bisa split bill "Voucher-10"

    Scenario: Transaksi Produk Dan Voucher Tidak Bisa Split Payment
        Given user berada di homepage "Voucher-11"
        And user pilih pelanggan "Voucher-11"
        And user pilih produk normal "Voucher-11"
        And user redeem voucher "Voucher-11"
        When user pilih split payment "Voucher-11"
        Then transaksi voucher tidak bisa split payment "Voucher-11"

    Scenario: Tidak Bisa Apply Voucher Dari Outlet Lain
        Given user berada di homepage "Voucher-12"
        And user pilih pelanggan "Voucher-12"
        And user pilih produk normal "Voucher-12"
        When user redeem voucher dari outlet lain "Voucher-12"
        Then tidak bisa apply voucher dari outlet lain "Voucher-12"

    Scenario: Bisa Apply Voucher Dari Outlet Sendiri
        Given user berada di homepage "Voucher-13"
        And user pilih pelanggan "Voucher-13"
        And user pilih produk normal "Voucher-13"
        When user redeem voucher dari outlet sendiri "Voucher-13"
        Then bisa apply dari outlet sendiri "Voucher-13"

    Scenario: Bisa Apply Voucher All Outlet
        Given user berada di homepage "Voucher-14"
        And user pilih pelanggan "Voucher-14"
        And user pilih produk normal "Voucher-14"
        When user apply voucher all outlet "Voucher-14"
        Then bisa apply voucher all outlet "Voucher-14"

    Scenario: Bisa Apply Voucher Dan Diskon Item Manual
        Given user berada di homepage "Voucher-15"
        And user pilih pelanggan "Voucher-15"
        And user pilih produk normal "Voucher-15"
        And user tambah diskon item manual "Voucher-15"
        When user apply voucher "Voucher-15"
        Then bisa apply voucher dan diskon item manual "Voucher-15"

    Scenario: Bisa Apply Voucher Dan Diskon Otomatis
        Given user berada di homepage "Voucher-16"
        And user pilih pelanggan "Voucher-16"
        And user pilih produk normal "Voucher-16"
        And promo tertambah otomatis "Voucher-16"
        When user apply voucher "Voucher-16"
        Then bisa apply voucher dan diskon item manual "Voucher-16"

    Scenario: Tidak Bisa Apply Voucher Jika Transaksi Cicilan
        Given user berada di homepage "Voucher-17"
        And user pilih pelanggan "Voucher-17"
        And user pilih produk normal "Voucher-17"
        And user apply voucher "Voucher-17"
        When user pilih cicilan "Voucher-17"
        Then tidak bisa apply voucher jika transaksi cicilan "Voucher-17"

    Scenario: Bisa Batalkan Voucher
        Given user berada di homepage dan sudah memilih produk dan voucher "Voucher-18"
        When user batalkan voucher "Voucher-18"
        Then bisa batalkan voucher "Voucher-18"

    Scenario: Validasi Batalkan Voucher Muncul Jika Klik Batalkan Transaksi
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-19"
        When user batalkan transaksi "Voucher-19"
        Then validasi muncul "Voucher-19"

    Scenario: Validasi Batalkan Voucher Muncul Jika Seluruh Produk Di Cart Dihapus
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-20"
        When user hapus semua produk di cart "Voucher-20"
        Then validasi Muncul "Voucher-20"

    Scenario: Validasi Batalkan Voucher Muncul Jika Ganti Nama Pelanggan
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-21"
        When user ganti nama pelanggan "Voucher-21"
        Then validasi Muncul "Voucher-21"

    Scenario: Diskon Transaksi Disabled Ketika Apply Voucher
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-22"
        When user klik titik 3 "Voucher-22"
        Then button diskon disabled "Voucher-22"

    Scenario: Transaksi Voucher Bisa Bayar Dengan Tunai
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-23"
        When user bayar tunai "Voucher-23"
        Then transaksi voucher berhasil "Voucher-23"

    Scenario: Transaksi Voucher Bisa Bayar Dengan Kartu
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-24"
        When user bayar Kartu "Voucher-24"
        Then transaksi voucher berhasil "Voucher-24"

    Scenario: Transaksi Voucher Bisa Bayar Dengan Custom Payment
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-25"
        When user bayar tunai "Voucher-25"
        Then transaksi voucher berhasil "Voucher-25"

    Scenario: Transaksi Voucher Dengan Poin
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-26"
        And user pilih poin "Voucher-26"
        When user bayar uang pas "Voucher-26"
        Then transaksi voucher berhasil "Voucher-26"

    Scenario: Transaksi Voucher Dengan Custom Ammount
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-27"
        And user pilih custom ammount "Voucher-27"
        When user bayar uang pas "Voucher-27"
        Then transaksi voucher berhasil "Voucher-27"

    Scenario: Transaksi Voucher Dengan Meja
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-28"
        And user pilih meja "Voucher-28"
        When user bayar uang pas "Voucher-28"
        Then transaksi voucher berhasil "Voucher-28"

    Scenario: Voucher Bisa Digunakan Kembali
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-29"
        And user batalkan voucher "Voucher-29"
        When user gunakan voucher kembali "Voucher-29"
        Then voucher bisa digunakan kembali "Voucher-29"

    Scenario: Voucher Hilang Di Cart
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-30"
        When user batalkan voucher "Voucher-30"
        Then voucher hilang di cart "Voucher-30"

    Scenario: Voucher Hilang Di Transaksi Tersimpan
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher "Voucher-31"
        When user batalkan voucher "Voucher-31"
        Then voucher hilang di transaksi tersimpan "Voucher-31"

    Scenario: Voucher Tidak Aktif
        Given user berada di homepage "Voucher-32"
        When user redeem voucher "Voucher-32"
        Then system tampilkan popup voucher tidak aktif "Voucher-32"

    Scenario: Voucher Tidak Berlaku
        Given user berada di homepage "Voucher-33"
        When user redeem voucher "Voucher-33"
        Then system tampilkan popup voucher tidak berlaku "Voucher-33"

    Scenario: Voucher Tidak Valid
        Given user berada di homepage "Voucher-34"
        When user redeem voucher "Voucher-34"
        Then system tampilkan popup voucher tidak valid "Voucher-34"

    Scenario: Voucher Sudah Habis
        Given user berada di homepage "Voucher-35"
        When user redeem voucher "Voucher-35"
        Then system tampilkan popup voucher sudah habis "Voucher-35"