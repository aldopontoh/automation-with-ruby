Given 'user berada di homepage "Split-03"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And 'user pilih produk "Split-03"' do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    # @app.transaksi.btn_simpan.click
    # @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click
end

When 'user pilih split bill "Split-03"' do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_split.click    
    @app.split.btn_split_bill.click
    @app.split.btn_select_split.click
end

Then 'system menampilkan halaman split bill dan terdapat icon diskon "Split-03"' do
    expect(@app.split.btn_plus_split_bill.displayed?).to be true
    expect(@app.split.btn_bayar_split_bill.displayed?).to be true
    sleep(3)
    p 'Scenario Berhasil'

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4

end