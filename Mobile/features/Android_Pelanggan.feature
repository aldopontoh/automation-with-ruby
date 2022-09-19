Feature: Android Pelanggan

    Scenario: Halaman Pelanggan
        Given user berada di homepage "Pelanggan-01"
        When user ke menu pelanggan "Pelanggan-01"
        Then system menampilkan halaman pelanggan "Pelanggan-01"

    Scenario: Halaman Tambah Pelanggan
        Given user berada di homepage "Pelanggan-02"
        When user tambah pelanggan "Pelanggan-02"
        Then system menampilkan halaman tambah pelanggan "Pelanggan-02"

    Scenario: Validasi Nama dan Nomor Telepon
        Given user berada di homepage "Pelanggan-03"
        And user tambah pelanggan "Pelanggan-03"
        When user simpan "Pelanggan-03"
        Then system menampilkan validasi nama wajib diisi dan nomor telepon minimal 5 digit dan max 15 digit "Pelanggan-03"

    Scenario: Validasi Nomor Telepon
        Given user berada di homepage "Pelanggan-04"
        And user tambah pelanggan "Pelanggan-04"
        And user input field nama satu huruf "Pelanggan-04"
        When user simpan "Pelanggan-04"
        Then system menampilkan validasi nomor telepon minimal 5 digit dan max 15 digit "Pelanggan-04"

    Scenario: Berhasil Tambah Pelanggan
        Given user berada di homepage "Pelanggan-05"
        And user tambah pelanggan "Pelanggan-05"
        And user input semua field "Pelanggan-05"
        When user simpan "Pelanggan-05"
        Then pelanggan berhasil disimpan "Pelanggan-05"

    Scenario: Berhasil Edit Pelanggan
        Given user berada di homepage "Pelanggan-06"
        When user edit pelanggan "Pelanggan-06"
        Then data pelanggan berhasil disimpan "Pelanggan-06"

    Scenario: Operator Tanpa Akses Tambah Pelanggan
        Given user berada di homepage "Pelanggan-07"
        And user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan "Pelanggan-07"
        When user ke menu pelanggan "Pelanggan-07"
        Then tidak ada button tambah pelanggan "Pelanggan-07"

    Scenario: Operator Tanpa Akses Edit Pelanggan
        Given user berada di homepage "Pelanggan-08"
        And user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan "Pelanggan-08"
        When user edit pelanggan "Pelanggan-08"
        Then system menampilkan validasi user tidak mempunyai akses "Pelanggan-08"