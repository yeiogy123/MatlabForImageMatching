# MatlabForImageMatching
圖像比對程式 
簡介
這個程式是一個用於圖像比對的 MATLAB 工具，用於比較兩組圖像之間的相似性。它使用 SAD（Sum of Absolute Differences）作為圖像相似性的度量，並可用於不同的圖像處理應用，如特徵比對、圖像檢測和圖像檢索。

使用方法
1. 安裝 MATLAB
確保你已經安裝了 MATLAB 軟體，因為這個程式是用 MATLAB 開發的。

2. 準備資料
將訓練圖像放入 dataset/training/ 目錄下。
將測試圖像放入 dataset/test/ 目錄下。
3. 執行程式
執行 ImageMatching.m 檔案以運行圖像比對程式。

4. 查看結果
程式將計算出每張測試圖像與訓練圖像之間的 SAD 值，並將最佳匹配的訓練圖像名稱記錄在 result.xlsx 檔案中。你可以使用 Excel 或其他表格處理工具打開此檔案以查看結果。

注意事項
確保 MATLAB 中的相關工具箱已經安裝，以確保程式順利運行。
請確保圖像檔案的路徑和格式正確，以便程式能夠正確讀取和處理圖像。
