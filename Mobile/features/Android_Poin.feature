Feature: Android Poin

    Scenario: Validasi Pilih Pelanggan
        Given user berada di homepage "Poin-01"
        And user pilih produk "Poin-01"
        When user pilih poin "Poin-01"
        Then system menampilkan popup validasi pilih pelanggan dahulu "Poin-01"

    Scenario: Berhasil Memilih Pelanggan
        Given user berada di homepage "Poin-02"
        And user pilih produk "Poin-02"
        And user pilih poin "Poin-02"
        When user pilih pelanggan "Poin-02"
        Then user berhasil memilih pelanggan "Poin-02"

    Scenario: Jumlah Poin Pelanggan
        Given user berada di homepage "Poin-03"
        And user pilih produk "Poin-03"
        And user pilih pelanggan "Poin-03"
        When user pilih poin "Poin-03"
        Then system menampilkan popup jumlah poin pelanggan "Poin-03"

    Scenario: Berhasil Menggunakan Poin
        Given user berada di homepage "Poin-04"
        And user pilih produk "Poin-04"
        And user pilih pelanggan "Poin-04"
        And user pilih poin "Poin-04"
        When user input poin "Poin-04"
        Then user berhasil menggunakan poin "Poin-04"

    Scenario: Popup Poin Tidak Cukup
        Given user berada di homepage "Poin-05"
        And user pilih produk "Poin-05"
        And user pilih pelanggan baru "Poin-05"
        When user pilih poin "Poin-05"
        Then system menampilkan popup poin tidak cukup "Poin-05"

    Scenario: Poin Registrasi
        Given user berada di homepage "Poin-06"
        And user pilih produk "Poin-06"
        And user pilih pelanggan baru "Poin-06"
        When user bayar "Poin-06"
        Then pelanggan mendapatkan poin registrasi "Poin-06"

    Scenario: Poin User Bertambah Dari Transaksi
        Given user berada di homepage "Poin-07"
        And user pilih produk "Poin-07"
        And user pilih pelanggan "Poin-07"
        And user pilih poin "Poin-07"
        When user bayar "Poin-07"
        Then poin user bertambah dari transaksi "Poin-07"

    Scenario: Poin User Bertambah Dari Transaksi Dan Registrasi
        Given user berada di homepage "Poin-08"
        And user pilih produk "Poin-08"
        And user pilih pelanggan baru "Poin-08"
        When user bayar "Poin-08"
        Then poin user bertambah dari transaksi dan registrasi "Poin-08"

    Scenario: Validasi Poin Lebih Besar Dari Poin Tersedia
        Given user berada di homepage "Poin-10"
        And user pilih produk "Poin-10"
        And user pilih pelanggan "Poin-10"
        And user pilih poin "Poin-10"
        When user input poin lebih dari jumlah poin maksimal "Poin-10"
        Then system menampilkan validasi jumlah poin yang ditikar lebih besar "Poin-10"

    Scenario: Poin Pelanggan Kembali Bertambah Saat Transaksi Dibatalkan
        Given user berada di homepage "Poin-14"
        And batalkan transaksi yang ada redeem poin "Poin-14"
        When user pilih pelanggan yang transaksinya dibatalkan "Poin-14"
        Then poin pelanggan kembali bertambah "Poin-14"

    Scenario: Poin Pelanggan Kembali Berkurang Saat Transaksi Dibatalkan
        Given user berada di homepage "Poin-15"
        And batalkan transaksi yang ada earn poin "Poin-15"
        When user pilih pelanggan yang transaksinya dibatalkan "Poin-15"
        Then poin pelanggan kembali berkurang "Poin-15"