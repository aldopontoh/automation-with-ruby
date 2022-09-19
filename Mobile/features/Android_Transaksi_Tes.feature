Feature: Android Transaksi Tes

    Scenario: Transaksi Produk Normal Uang Pas
        Given user berada di homepage "Uang Pas"
        And user pilih produk normal "Uang Pas"
        When user bayar dengan uang tunai pas
        Then user sukses bayar "Uang Pas"

    Scenario: Transaksi Produk Normal Kartu
        Given user berada di homepage "Kartu"
        And user pilih produk normal "Kartu"
        When user bayar dengan kartu
        Then user sukses bayar "Kartu"

    Scenario: Transaksi Produk Normal Custom Payment Credit
        Given user berada di homepage "Custom Payment Credit"
        And user pilih produk normal "Custom Payment Credit"
        When user bayar dengan "Custom Payment Credit"
        Then user sukses bayar "Custom Payment Credit"

    Scenario: Transaksi Produk Normal Custom Payment Debit
        Given user berada di homepage "Custom Payment Debit"
        And user pilih produk normal "Custom Payment Debit"
        When user bayar dengan "Custom Payment Debit"
        Then user sukses bayar "Custom Payment Debit"

    