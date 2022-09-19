Given 'user berada di homepage "Pindah Meja"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end 

And 'user pilih meja "Pindah Meja"' do
    @app.transaksi.btn_meja.click
    @app.meja.btn_meja1class.click
    @app.meja.btn_pilihmeja.click

end

And 'user pilih produk normal "Pindah Meja"' do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
end

And 'user pindah meja' do 
    @app.transaksi.btn_meja.click
    @app.meja.btn_meja1class.click
    @app.meja.btn_pindahpisahgabungmeja.click
    @app.meja.btn_meja2class_nd.click
    @app.meja.btn_pindahmeja.click
    @app.meja.btn_selectmeja.click
    @app.meja.btn_lihattransaksi.click

end 

When 'user bayar dengan uang tunai pas "Pindah Meja"' do
    @app.transaksi.btn_bayar.click
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_tunai.click
    @app.pembayaran.btn_uangpas.click
    @app.pembayaran.btn_selesai.click
    sleep(2)
    begin
        if waitFor {@app.pembayaran.btn_lihatnanti}
            @app.pembayaran.btn_lihatnanti.click
        end
    rescue
        p 'element lihat nanti laporan not found'
    end
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)
end

Then 'user sukses bayar "Pindah Meja"' do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end
