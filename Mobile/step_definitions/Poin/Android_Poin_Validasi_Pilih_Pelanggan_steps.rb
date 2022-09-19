Given 'user berada di homepage "Poin-01"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And 'user pilih produk "Poin-01"' do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end

    @app.transaksi.btn_bayar.click
end

When 'user pilih poin "Poin-01"' do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.poin.btn_poin.click
end

Then 'system menampilkan popup validasi pilih pelanggan dahulu "Poin-01"' do
    expect(@app.poin.btn_pilihPelanggan.displayed?).to be true
    p 'Scenario Berhasil'

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end
