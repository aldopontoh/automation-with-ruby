Given 'user berada di homepage "Pelanggan-08"' do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And 'user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan "Pelanggan-08"' do
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_operator.click
    @app.pelanggan.btn_operator_EkoGreen.click
    # Loop btn 1
    $i = 0
    $num = 4
    while $i < $num  do
      @app.afterloginpage.text_btn_1.click
        $i +=1
    end
    sleep(3)
    expect(@app.afterloginpage.img_produk.displayed?).to be true

end

When 'user edit pelanggan "Pelanggan-08"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_ubahpelanggan.click
    sleep(5)

end

Then 'system menampilkan validasi user tidak mempunyai akses "Pelanggan-08"' do
    expect(@app.pelanggan.btn_ubahpelanggan.displayed?).to be true
    @app.pelanggan.btn_close.click
    @app.pelanggan.btn_back.click
    p 'Scenario Berhasil'

end
