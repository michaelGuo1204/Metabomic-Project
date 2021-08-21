# Summary of Ensemble

[<< Go back](../README.md)


## Ensemble structure
| Model                            |   Weight |
|:---------------------------------|---------:|
| 17_CatBoost                      |        1 |
| 17_CatBoost_SelectedFeatures     |        1 |
| 28_RandomForest_SelectedFeatures |        1 |

## Metric details
|           |    score |   threshold |
|:----------|---------:|------------:|
| logloss   | 0.576474 | nan         |
| auc       | 0.762133 | nan         |
| f1        | 0.666667 |   0.432499  |
| accuracy  | 0.732558 |   0.48995   |
| precision | 0.866667 |   0.71695   |
| recall    | 1        |   0.0695731 |
| mcc       | 0.44195  |   0.473934  |


## Confusion matrix (at threshold=0.48995)
|              |   Predicted as 0 |   Predicted as 1 |
|:-------------|-----------------:|-----------------:|
| Labeled as 0 |              170 |               31 |
| Labeled as 1 |               61 |               82 |

## Learning curves
![Learning curves](learning_curves.png)
## Confusion Matrix

![Confusion Matrix](confusion_matrix.png)


## Normalized Confusion Matrix

![Normalized Confusion Matrix](confusion_matrix_normalized.png)


## ROC Curve

![ROC Curve](roc_curve.png)


## Kolmogorov-Smirnov Statistic

![Kolmogorov-Smirnov Statistic](ks_statistic.png)


## Precision-Recall Curve

![Precision-Recall Curve](precision_recall_curve.png)


## Calibration Curve

![Calibration Curve](calibration_curve_curve.png)


## Cumulative Gains Curve

![Cumulative Gains Curve](cumulative_gains_curve.png)


## Lift Curve

![Lift Curve](lift_curve.png)



[<< Go back](../README.md)
