resource "aws_s3_bucket" "sandy-preethi-00001" {
  bucket = "sandy-preethi-00001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  depends_on = [aws_route_table_association.rta-terra]
}

resource "aws_s3_bucket" "sandy-pree-00002" {
  bucket = "sandy-preethi-00002"

  tags = {
    Name        = "My bucket"
    Environment = "PPR"
  }
  depends_on = [aws_s3_bucket.sandy-preethi-00001]
}

resource "aws_s3_bucket" "sandy-pree-00003" {
  bucket = "sandy-preethi-00003"

  tags = {
    Name        = "My bucket"
    Environment = "PRD"
  }
  depends_on = [aws_s3_bucket.sandy-preethi-00002]
}
