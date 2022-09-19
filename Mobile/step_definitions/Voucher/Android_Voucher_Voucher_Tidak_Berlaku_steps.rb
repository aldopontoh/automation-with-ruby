Given 'user berada di homepage "Voucher-33"' do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end

end

When 'user redeem voucher "Voucher-33"' do
    @app.poinvoucherpromo.btn_titiktiga.click
    @app.poinvoucherpromo.btn_voucher.click
    @app.poinvoucherpromo.txtfield_addvoucher.send_keys "voucinvalid"
    @app.transaksi.btn_gunakanVoucher.click
    sleep(1)
end

Then 'system tampilkan popup voucher tidak berlaku "Voucher-33"' do
    txt_popup = @app.poinvoucherpromo.txt_popupVoucher
    textPopup = txt_popup.text
    p textPopup
    begin
        if textPopup == 'Kode Voucher Tidak Berlaku'
            p 'scenario berhasil'
        end
    rescue
        p 'scenario gagal'
    end

    sleep(2)
    @app.poinvoucherpromo.btn_OK_popupVoucher.click

    sleep(1)
    $driver.press_keycode 4
    
end