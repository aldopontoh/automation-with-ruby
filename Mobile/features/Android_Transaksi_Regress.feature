Feature: Android Transaksi Regress

    Scenario: Transaksi Produk Normal Uang Pas
        Given user berada di homepage "Uang Pas"
        And user pilih produk normal "Uang Pas"
        When user bayar dengan uang tunai pas
        Then user sukses bayar "Uang Pas"

    Scenario: Transaksi Produk Normal Nops Variant Varops
        Given user berada di homepage "Normal Nops Variant Varops"
        And user pilih produk normal nops variant varops
        When user bayar dengan uang tunai pas "Normal Nops Variant Varops"
        Then user sukses bayar "Normal Nops Variant Varops"

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

    Scenario: Transaksi Produk Normal Uang Pas Void
        Given user berada di homepage "Uang Pas Void"
        And user pilih produk normal "Uang Pas Void"
        And user bayar dengan uang tunai pas "Uang Pas Void"
        And user sukses bayar "Uang Pas Void"
	    When user batalkan transaksi "Uang Pas Void"
	    Then user sukses batalkan transaksi "Uang Pas Void"

    Scenario: Transaksi Produk Normal Kartu Void
        Given user berada di homepage "Kartu Void"
        And user pilih produk normal "Kartu Void"
        And user bayar dengan kartu "Kartu Void"
        And user sukses bayar "Kartu Void"
	    When user batalkan transaksi "Kartu Void"
	    Then user sukses batalkan transaksi "Kartu Void"

    Scenario: Transaksi Produk Normal Custom Payment Credit Void
        Given user berada di homepage "Custom Payment Credit Void"
        And user pilih produk normal "Custom Payment Credit Void"
        And user bayar dengan custom payment credit "Custom Payment Credit Void"
        And user sukses bayar "Custom Payment Credit Void"
	    When user batalkan transaksi "Custom Payment Credit Void"
	    Then user sukses batalkan transaksi "Custom Payment Credit Void"

    Scenario: Transaksi Produk Normal Custom Payment Debit Void
        Given user berada di homepage "Custom Payment Debit Void"
        And user pilih produk normal "Custom Payment Debit Void"
        And user bayar dengan custom payment credit "Custom Payment Debit Void"
        And user sukses bayar "Custom Payment Debit Void"
	    When user batalkan transaksi "Custom Payment Debit Void"
	    Then user sukses batalkan transaksi "Custom Payment Debit Void"

    Scenario: Transaksi Pindah Meja
        Given user berada di homepage "Pindah Meja"
	    And user pilih meja "Pindah Meja"
        And user pilih produk normal "Pindah Meja"
	    And user pindah meja
        When user bayar dengan uang tunai pas "Pindah Meja"
        Then user sukses bayar "Pindah Meja"

    Scenario: Transaksi Pisah Meja
        Given user berada di homepage "Pisah Meja"
	    And user pilih meja "Pisah Meja"
        And user pilih produk normal "Pisah Meja"
	    And user pisah meja
        When user bayar dengan uang tunai pas "Pisah Meja"
        Then user sukses bayar "Pisah Meja"

    Scenario: Transaksi Produk dan Pelanggan
        Given user berada di homepage "Produk dan Pelanggan"
	    And user pilih pelanggan "Produk dan Pelanggan"
        And user pilih produk normal "Produk dan Pelanggan"
        When user bayar dengan uang tunai pas "Produk dan Pelanggan"
        Then user sukses bayar "Produk dan Pelanggan"

    Scenario: Transaksi Pilih Meja Dan Pelanggan
        Given user berada di homepage "Pilih Meja Dan Pelanggan"
	    And user pilih pelanggan "Pilih Meja Dan Pelanggan"
	    And user pilih meja "Pilih Meja Dan Pelanggan"
        And user pilih produk normal "Pilih Meja Dan Pelanggan"
        When user bayar dengan uang tunai pas "Pilih Meja Dan Pelanggan"
        Then user sukses bayar "Pilih Meja Dan Pelanggan"

    Scenario: Transaksi Pilih Meja Pelanggan Dan Poin
        Given user berada di homepage "Pilih Meja Pelanggan Dan Poin"
	    And user pilih pelanggan "Pilih Meja Pelanggan Dan Poin"
	    And user pilih meja "Pilih Meja Pelanggan Dan Poin"
        And user pilih produk normal "Pilih Meja Pelanggan Dan Poin"	
	    And user pilih poin
        When user bayar dengan uang tunai pas "Pilih Meja Pelanggan Dan Poin"
        Then user sukses bayar "Pilih Meja Pelanggan Dan Poin"

    Scenario: Transaksi Pilih Meja Pelanggan Dan Voucher
        Given user berada di homepage "Pilih Meja Pelanggan Dan Voucher"
	    And user pilih pelanggan "Pilih Meja Pelanggan Dan Voucher"
	    And user pilih meja "Pilih Meja Pelanggan Dan Voucher"
        And user pilih produk normal "Pilih Meja Pelanggan Dan Voucher"
	    And user apply voucher
        When user bayar dengan uang tunai pas "Pilih Meja Pelanggan Dan Voucher"
        Then user sukses bayar "Pilih Meja Pelanggan Dan Voucher"

    Scenario: Transaksi Produk Split Payment
        Given user berada di homepage "Split Payment"
        And user pilih produk normal "Split Payment"
	    And user split payment
        When user bayar transaksi "Split Payment"
        Then user sukses bayar "Split Payment"

    Scenario: Transaksi Produk Split Bill
        Given user berada di homepage "Split Bill"
        And user pilih produk normal "Split Bill"
	    And user split bill
        When user bayar transaksi "Split Bill"
        Then user sukses bayar "Split Bill"

    Scenario: Transaksi Cicilan
        Given user berada di homepage "Cicilan"
        And user pilih pelanggan "Cicilan"
        And user pilih produk normal "Cicilan"
	    And user pilih cicilan
        When user bayar transaksi "Cicilan"
        Then user sukses bayar "Cicilan"

    Scenario: Transaksi Promo Otomatis
        Given user berada di homepage "Promo Otomatis"
        And user pilih produk normal "Promo Otomatis"
	    And user apply promo otomatis
        When user bayar semua transaksi "Promo Otomatis"
        Then user sukses bayar "Promo Otomatis"

    Scenario: Transaksi Promo Khusus
        Given user berada di homepage "Promo Khusus"
        And user pilih produk normal "Promo Khusus"
	    And user apply promo khusus
        When user bayar semua transaksi "Promo Khusus"
        Then user sukses bayar "Promo Khusus"

    Scenario: Transaksi Custom Ammount Void
        Given user berada di homepage "Custom Ammount Void"
        And user pilih produk normal "Custom Ammount Void"
        And user input custom ammount dan catatan "Custom Ammount Void"
        And user bayar dengan uang tunai pas "Custom Ammount Void"
        And user sukses bayar "Custom Ammount Void"
        When user batalkan transaksi "Custom Ammount Void"
        Then user sukses batalkan transaksi "Custom Ammount Void"

    Scenario: Transaksi Custom Ammount
        Given user berada di homepage "Custom Ammount"
        And user pilih produk normal "Custom Ammount"
        And user input custom ammount dan catatan "Custom Ammont"
        When user bayar dengan uang tunai pas "Custom Ammount"
        Then user sukses bayar "Custom Ammount"

    Scenario: Transaksi Rekap Kas
        Given user berada di homepage "Rekap Kas"
        And user pilih produk normal "Rekap Kas"
        And user bayar transaksi "Rekap Kas"
	    When user rekap kas
	    Then user sukses "Rekap Kas"